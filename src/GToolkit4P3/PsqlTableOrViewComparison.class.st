Class {
	#name : #PsqlTableOrViewComparison,
	#superclass : #PsqlModelComparison,
	#instVars : [
		'columns'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlTableOrViewComparison >> columns [
	columns
		ifNil: [ | dbColumns scriptColumns |
			columns := OrderedCollection new.
			dbColumns := databaseObject
					ifNil: [ #() ]
					ifNotNil: [ databaseObject structure ].
			scriptColumns := Set
					withAll: (scriptObject ifNil: [ #() ] ifNotNil: [ scriptObject columns ]).
			dbColumns
				do: [ :each | 
					| scriptColumn |
					scriptObject
						ifNotNil: [ scriptColumn := scriptObject columnNamed: each name.
							scriptColumns remove: scriptColumn ifAbsent: [  ] ].
					columns
						add: (PsqlColumnComparison compareScript: scriptColumn toDatabase: each) ].
			scriptColumns
				do: [ :each | columns add: (PsqlColumnComparison compareScript: each toDatabase: nil) ] ].
	^ columns
]

{ #category : #accessing }
PsqlTableOrViewComparison >> columns: anObject [
	columns := anObject
]

{ #category : #accessing }
PsqlTableOrViewComparison >> gtDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Diff';
		items: [ self columns asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Item' text: [ :each | each name ];
		column: 'Only in database'
			text: [ :each | each isMissingFromScripts ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Only in scripts'
			text: [ :each | each isMissingFromDatabase ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Modified'
			text: [ :each | each isModified ifTrue: [ 'X' ] ifFalse: [ '' ] ]
]

{ #category : #testing }
PsqlTableOrViewComparison >> isModified [
	^ self columns
		anySatisfy: [ :each | 
			each isMissingFromDatabase
				or: [ each isMissingFromScripts or: [ each isModified ] ] ]
]
