Class {
	#name : #PsqlSchemaImporter,
	#superclass : #Object,
	#instVars : [
		'asts',
		'database'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlSchemaImporter >> database [
	^ database
]

{ #category : #accessing }
PsqlSchemaImporter >> database: anObject [
	database := anObject
]

{ #category : #accessing }
PsqlSchemaImporter >> defaultSchema [
	^ database defaultSchema
]

{ #category : #accessing }
PsqlSchemaImporter >> import: aDirectory [
	database := PsqlDatabase new.
	self
		importSchemaDefinitionFromFiles: (PsqlParser sourceFilesIn: aDirectory asFileReference)
]

{ #category : #accessing }
PsqlSchemaImporter >> importForeignKeyConstraintsIn: aPsqlNode [
	aPsqlNode // PsqlAlterTableCommandNode
		do: [ :each | 
			each actions
				do: [ :action | 
					action tableConstraint
						ifNotNil: [ :tc | 
							tc refTable
								ifNotNil: [ :ref | 
									tc columnNames size = tc refColumns size
										ifTrue: [ | constraint table refTable |
											constraint := PsqlForeignKeyConstraint new.
											tc constraintName ifNotNil: [ :name | constraint name: name source ].
											table := (self schemaFor: each tableName)
													tableNamed: each tableName name source.
											constraint table: table.
											constraint
												columns: (tc columnNames collect: [ :e | table columnNamed: e name source ]).
											refTable := (self schemaFor: ref) tableNamed: ref name source.
											constraint refTable: refTable.
											constraint
												refColumns: (tc refColumns collect: [ :e | refTable columnNamed: e source ]).
											constraint node: each.
											table addConstraint: constraint ] ] ] ] ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importSchemaDefinitionFromFiles: files [
	asts := files collect: [ :each | PsqlParser parseFileWithErrors: each ].
	asts
		do: [ :each | 
			self importTablesIn: each.
			self importViewsIn: each ].
	asts do: [ :each | self importForeignKeyConstraintsIn: each ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importTableColumnsIn: table [
	^ table node columns
		do: [ :colNode | 
			| column |
			column := PsqlColumn new.
			column name: colNode columnName name source.
			column table: table.
			column type: colNode dataType source.
			column node: colNode.
			colNode columnConstraints
				do: [ :each | 
					each defaultExpression ifNotNil: [ :def | column defaultValue: def source ].
					(each _s size = 2
						and: [ (each _s first source sameAs: 'NOT')
								and: [ each _s last source sameAs: 'NULL' ] ])
						ifTrue: [ column nullable: false ] ].
			table addColumn: column ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importTableConstraintsIn: table [
	table node tableConstraints
		do: [ :each | 
			| constraint |
			each isPrimaryKey ifTrue: [ constraint := PsqlPrimaryKeyConstraint new ].
			each isUnique ifTrue: [ constraint := PsqlUniqueConstraint new ].
			constraint
				ifNotNil: [ constraint table: table.
					constraint
						columns: (each columnNames collect: [ :name | table columnNamed: name name source ]).
					constraint node: each.
					table addConstraint: constraint ] ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importTablesIn: aPsqlNode [
	aPsqlNode // PsqlCreateTableCommandNode
		do: [ :node | 
			| table schema |
			schema := self schemaFor: node tableName.
			table := PsqlTable new.
			table name: node tableName name source.
			table schema: schema.
			table node: node.
			schema addTable: table.
			self importTableColumnsIn: table.
			self importTableConstraintsIn: table ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importViewColumnsIn: view [
	view node columnNames notEmpty
		ifTrue: [ view node columnNames
				do: [ :colNode | 
					| column |
					column := PsqlColumn new.
					column name: colNode columnName name source.
					column table: view.
					column node: colNode.
					view addColumn: column ] ]
		ifFalse: [ (view node query isKindOf: PsqlSelectCommandNode)
				ifTrue: [ view node query values
						doWithIndex: [ :each :index | 
							| nextIndex name column |
							nextIndex := view node query values size = index
									ifTrue: [ SmallInteger maxVal ]
									ifFalse: [ (view node query values at: index + 1) startPosition ].
							name := view node query outputNames
									detect: [ :as | as startPosition between: each startPosition and: nextIndex ]
									ifFound: [ :as | as source ]
									ifNone: [ (each isKindOf: PsqlIdentifierNode)
											ifTrue: [ each value source ]
											ifFalse: [ (each isKindOf: PsqlFieldExpressionNode)
													ifTrue: [ each name source ]
													ifFalse: [ each source ] ] ].
							column := PsqlColumn new.
							column name: name.
							column table: view.
							column node: each.
							view addColumn: column ] ] ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importViewsIn: aPsqlNode [
	aPsqlNode // PsqlCreateViewCommandNode
		do: [ :node | 
			| view schema |
			schema := self schemaFor: node name.
			view := PsqlView new.
			view name: node name name source.
			view schema: schema.
			view node: node.
			schema addView: view.
			self importViewColumnsIn: view ].
	aPsqlNode // PsqlCreateMaterializedViewCommandNode
		do: [ :node | 
			| view schema |
			schema := self schemaFor: node name.
			view := PsqlView new.
			view name: node tableName name source.
			view isMaterialized: true.
			view schema: schema.
			view node: node.
			schema addView: view.
			self importViewColumnsIn: view ]
]

{ #category : #accessing }
PsqlSchemaImporter >> schemaFor: aQualifiedNameNode [
	^ aQualifiedNameNode schema
		ifNil: [ self defaultSchema ]
		ifNotNil: [ database schemaNamed: aQualifiedNameNode schema source ]
]
