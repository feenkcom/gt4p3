Class {
	#name : #PsqlDatabase,
	#superclass : #PsqlModel,
	#instVars : [
		'schemas'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlDatabase >> defaultSchema [
	^ self schemaNamed: 'public'
]

{ #category : #accessing }
PsqlDatabase >> gtSchemasFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Schemas';
		priority: 12;
		items: [ schemas asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Name' text: #name;
		column: '# Tables'
			text: [ :each | each tables size ]
			width: 75;
		column: '# Views'
			text: [ :each | each views size ]
			width: 75
]

{ #category : #accessing }
PsqlDatabase >> initialize [
	super initialize.
	schemas := Dictionary new
]

{ #category : #accessing }
PsqlDatabase >> schemaNamed: aString [
	^ schemas
		at: aString asLowercase
		ifAbsentPut: [ PsqlSchema new
				name: aString;
				database: self;
				yourself ]
]
