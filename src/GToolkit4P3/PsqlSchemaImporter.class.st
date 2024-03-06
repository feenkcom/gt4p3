Class {
	#name : #PsqlSchemaImporter,
	#superclass : #Object,
	#instVars : [
		'schema',
		'asts'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlSchemaImporter >> createSchemaNamed: schemaName [
	schema := PsqlSchema new.
	schema name: schemaName
]

{ #category : #accessing }
PsqlSchemaImporter >> import: aDirectory [
	| schemaName |
	schemaName := aDirectory asFileReference basenameWithoutExtension.
	self createSchemaNamed: schemaName.
	self
		importSchemaDefinitionFromFiles: (PsqlParser sourceFilesIn: aDirectory asFileReference)
]

{ #category : #accessing }
PsqlSchemaImporter >> importSchemaDefinitionFromFiles: files [
	asts := files collect: [ :each | PsqlParser parseFileWithErrors: each ].
	asts do: [ :each | self importTablesIn: each ]
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
			each isPrimaryKey
				ifTrue: [ constraint := PsqlPrimaryKeyConstraint new.
					constraint table: table.
					constraint
						columns: (each columnNames collect: [ :name | table columnNamed: name name source ]).
					table addConstraint: constraint ].
			each isUnique
				ifTrue: [ constraint := PsqlUniqueConstraint new.
					constraint table: table.
					constraint
						columns: (each columnNames collect: [ :name | table columnNamed: name name source ]).
					table addConstraint: constraint ] ]
]

{ #category : #accessing }
PsqlSchemaImporter >> importTablesIn: aPsqlNode [
	aPsqlNode // PsqlCreateTableCommandNode
		do: [ :node | 
			| table |
			table := PsqlTable new.
			table name: node tableName name source.
			table schema: schema.
			table node: node.
			schema addTable: table.
			self importTableColumnsIn: table.
			self importTableConstraintsIn: table ]
]

{ #category : #accessing }
PsqlSchemaImporter >> schema [
	^ schema
]

{ #category : #accessing }
PsqlSchemaImporter >> schema: anObject [
	schema := anObject
]