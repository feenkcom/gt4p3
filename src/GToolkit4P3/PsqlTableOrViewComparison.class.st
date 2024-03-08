Class {
	#name : #PsqlTableOrViewComparison,
	#superclass : #PsqlModelComparison,
	#instVars : [
		'columns',
		'constraints'
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
PsqlTableOrViewComparison >> constraints [
	constraints
		ifNil: [ | dbConstraints scriptsConstraints |
			constraints := OrderedCollection new.
			dbConstraints := (databaseObject
					ifNil: [ #() ]
					ifNotNil: [ databaseObject constraints ])
					reject: [ :each | (self scriptConstraintTypeFor: each) isNil ].
			scriptsConstraints := Set
					withAll: (scriptObject ifNil: [ #() ] ifNotNil: [ scriptObject constraints ]).
			dbConstraints
				do: [ :each | 
					constraints
						add: (PsqlConstraintComparison
								compareScript: (self scriptConstraintIn: scriptsConstraints matching: each)
								toDatabase: each) ].
			scriptsConstraints
				do: [ :each | constraints add: (PsqlConstraintComparison compareScript: each toDatabase: nil) ] ].
	^ constraints
]

{ #category : #accessing }
PsqlTableOrViewComparison >> constraints: anObject [
	constraints := anObject
]

{ #category : #accessing }
PsqlTableOrViewComparison >> gtColumnDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Column diff';
		items: [ self columns asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Item' text: [ :each | each name ];
		column: 'Only in database'
			text: [ :each | each isMissingFromScripts ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Only in scripts'
			text: [ :each | each isMissingFromDatabase ifTrue: [ 'X' ] ifFalse: [ '' ] ];
		column: 'Modified'
			text: [ :each | each isModified ifTrue: [ 'X' ] ifFalse: [ '' ] ]
]

{ #category : #accessing }
PsqlTableOrViewComparison >> gtConstraintDiffFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Constraint diff';
		items: [ self constraints asSortedCollection: [ :a :b | a name < b name ] ];
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
	(self isMissingFromDatabase or: [ self isMissingFromScripts ])
		ifTrue: [ ^ false ].
	^ (self columns
		anySatisfy: [ :each | 
			each isMissingFromDatabase
				or: [ each isMissingFromScripts or: [ each isModified ] ] ])
		or: [ self constraints
				anySatisfy: [ :each | 
					each isMissingFromDatabase
						or: [ each isMissingFromScripts or: [ each isModified ] ] ] ]
]

{ #category : #accessing }
PsqlTableOrViewComparison >> scriptConstraintIn: scriptsConstraints matching: dbConstraint [
	| constraint scriptConstraintClass |
	scriptConstraintClass := self scriptConstraintTypeFor: dbConstraint.
	constraint := scriptsConstraints
			detect: [ :each | 
				each class = scriptConstraintClass
					and: [ each name = dbConstraint constraintName ] ]
			ifNone: [ scriptsConstraints
					detect: [ :each | 
						each class = scriptConstraintClass
							and: [ each name isNil
									and: [ (each table name sameAs: dbConstraint tableName)
											and: [ each columns size = dbConstraint constraintColumns size
													and: [ (1 to: each columns size)
															allSatisfy: [ :i | (each columns at: i) name sameAs: (dbConstraint constraintColumns at: i) ] ] ] ] ] ]
					ifNone: [  ] ].
	constraint ifNotNil: [ scriptsConstraints remove: constraint ].
	^ constraint
]

{ #category : #accessing }
PsqlTableOrViewComparison >> scriptConstraintTypeFor: dbConstraint [
	dbConstraint class = P3UniqueConstraint ifTrue: [ ^ PsqlUniqueConstraint ].
	dbConstraint class = P3ForeignKeyConstraint
		ifTrue: [ ^ PsqlForeignKeyConstraint ].
	dbConstraint class = P3PrimaryKeyConstraint
		ifTrue: [ ^ PsqlPrimaryKeyConstraint ].
	^ nil
]
