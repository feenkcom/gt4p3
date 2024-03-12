Class {
	#name : #PsqlConstraintComparison,
	#superclass : #PsqlModelComparison,
	#category : #'GToolkit4P3-Importer'
}

{ #category : #testing }
PsqlConstraintComparison >> areColumnsModified [
	(databaseObject isNil
		or: [ scriptObject isNil
				or: [ databaseObject constraintColumns size ~= scriptObject constraintColumns size ] ])
		ifTrue: [ ^ true ].
	databaseObject constraintColumns
		with: scriptObject constraintColumns
		do: [ :dbCol :scrCol | (dbCol sameAs: scrCol) ifFalse: [ ^ true ] ].
	^ false
]

{ #category : #accessing }
PsqlConstraintComparison >> gtDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Diff';
		priority: 10;
		items: [ #(#('Table' tableName) #('Columns' constraintColumns))
				, ((databaseObject class = P3ForeignKeyConstraint
						or: [ scriptObject class = PsqlForeignKeyConstraint ])
						ifTrue: [ #(#('Reference table' foreignKeyTable) #('Reference columns' foreignKeyColumns)) ]
						ifFalse: [ #() ]) ];
		column: 'Name' text: [ :each | each first ];
		column: 'Database'
			text: [ :each | (databaseObject ifNotNil: [ databaseObject perform: each second ]) ifNil: [ '' ] ];
		column: 'Scripts'
			text: [ :each | (scriptObject ifNotNil: [ scriptObject perform: each last ]) ifNil: [ '' ] ]
]

{ #category : #testing }
PsqlConstraintComparison >> isModified [
	(self isMissingFromDatabase or: [ self isMissingFromScripts ])
		ifTrue: [ ^ false ].
	^ self isTableModified or: [ self areColumnsModified ]
]

{ #category : #testing }
PsqlConstraintComparison >> isTableModified [
	(databaseObject isNil or: [ scriptObject isNil ]) ifTrue: [ ^ true ].
	^ (databaseObject tableName sameAs: scriptObject tableName) not
]

{ #category : #accessing }
PsqlConstraintComparison >> name [
	^ (databaseObject ifNotNil: [ databaseObject constraintName ])
		ifNil: [ scriptObject ifNotNil: [ scriptObject constraintName ] ]
]
