Class {
	#name : #PsqlColumnComparison,
	#superclass : #PsqlModelComparison,
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlColumnComparison >> gtDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Diff';
		priority: 10;
		items: [ #(#('Position' ordinalPosition) #('Type' dataType type)) ];
		column: 'Name' text: [ :each | each first ];
		column: 'Database'
			text: [ :each | 
				(databaseObject
					ifNotNil: [ (databaseObject respondsTo: each second)
							ifTrue: [ databaseObject perform: each second ] ]) ifNil: [ '' ] ];
		column: 'Scripts'
			text: [ :each | 
				(scriptObject
					ifNotNil: [ (scriptObject respondsTo: each last)
							ifTrue: [ scriptObject perform: each last ] ]) ifNil: [ '' ] ]
]

{ #category : #testing }
PsqlColumnComparison >> isForView [
	^ scriptObject notNil and: [ scriptObject table isKindOf: PsqlView ]
]

{ #category : #testing }
PsqlColumnComparison >> isModified [
	(self isMissingFromDatabase or: [ self isMissingFromScripts ])
		ifTrue: [ ^ false ].
	^ self isPositionModified
		or: [ self isForView not and: [ self isTypeModified ] ]
]

{ #category : #testing }
PsqlColumnComparison >> isPositionModified [
	^ (scriptObject ifNotNil: [ scriptObject ordinalPosition ])
		~= (databaseObject ifNotNil: [ databaseObject ordinalPosition ])
]

{ #category : #testing }
PsqlColumnComparison >> isTypeModified [
	^ (scriptObject ifNotNil: [ self normalizeTypeName: scriptObject dataType ])
		~= (databaseObject ifNotNil: [ self normalizeTypeName: databaseObject dataType ])
]

{ #category : #testing }
PsqlColumnComparison >> normalizeTypeName: aString [
	(aString sameAs: 'integer') ifTrue: [ ^ 'int' ].
	(aString sameAs: 'float') ifTrue: [ ^ 'double precision' ].
	(aString sameAs: 'time') ifTrue: [ ^ 'time without time zone' ].
	('varchar(*)' match: aString) ifTrue: [ ^ 'character varying' ].
	^ aString
]
