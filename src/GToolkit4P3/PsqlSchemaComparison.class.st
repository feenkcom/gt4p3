Class {
	#name : #PsqlSchemaComparison,
	#superclass : #PsqlModelComparison,
	#instVars : [
		'tables',
		'views'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlSchemaComparison >> gtDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Diff';
		items: [ self tables , self views asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Item' text: [ :each | each name ];
		column: 'Only in database'
			text: [ :each | each isMissingFromScripts ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Only in scripts'
			text: [ :each | each isMissingFromDatabase ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Modified'
			text: [ :each | each isModified ifTrue: [ 'X' ] ifFalse: [ '' ] ]
]

{ #category : #testing }
PsqlSchemaComparison >> isModified [
	^ (self tables
		anySatisfy: [ :each | 
			each isMissingFromDatabase
				or: [ each isMissingFromScripts or: [ each isModified ] ] ])
		or: [ self views
				anySatisfy: [ :each | 
					each isMissingFromDatabase
						or: [ each isMissingFromScripts or: [ each isModified ] ] ] ]
]

{ #category : #accessing }
PsqlSchemaComparison >> tables [
	tables
		ifNil: [ | databaseTables scriptTables |
			tables := OrderedCollection new.
			databaseTables := databaseObject
					ifNil: [ #() ]
					ifNotNil: [ databaseObject tables select: [ :each | each type = 'BASE TABLE' ] ].
			scriptTables := Set
					withAll: (scriptObject ifNil: [ #() ] ifNotNil: [ scriptObject tables ]).
			databaseTables
				do: [ :each | 
					| scriptTable |
					scriptObject
						ifNotNil: [ scriptTable := scriptObject tableNamed: each name.
							scriptTables remove: scriptTable ifAbsent: [  ] ].
					tables
						add: (PsqlTableOrViewComparison compareScript: scriptTable toDatabase: each) ].
			scriptTables
				do: [ :each | tables add: (PsqlTableOrViewComparison compareScript: each toDatabase: nil) ] ].
	^ tables
]

{ #category : #accessing }
PsqlSchemaComparison >> tables: anObject [
	tables := anObject
]

{ #category : #accessing }
PsqlSchemaComparison >> views [
	views
		ifNil: [ | databaseTables scriptTables |
			views := OrderedCollection new.
			databaseTables := databaseObject
					ifNil: [ #() ]
					ifNotNil: [ databaseObject tables select: [ :each | each type = 'VIEW' ] ].
			scriptTables := Set
					withAll: (scriptObject ifNil: [ #() ] ifNotNil: [ scriptObject views ]).
			databaseTables
				do: [ :each | 
					| scriptTable |
					scriptObject
						ifNotNil: [ scriptTable := scriptObject viewNamed: each name.
							scriptTables remove: scriptTable ifAbsent: [  ] ].
					views
						add: (PsqlTableOrViewComparison compareScript: scriptTable toDatabase: each) ].
			scriptTables
				do: [ :each | views add: (PsqlTableOrViewComparison compareScript: each toDatabase: nil) ] ].
	^ views
]

{ #category : #accessing }
PsqlSchemaComparison >> views: anObject [
	views := anObject
]
