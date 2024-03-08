Class {
	#name : #PsqlView,
	#superclass : #PsqlTableLike,
	#instVars : [
		'tables',
		'isMaterialized'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlView >> gtColumnViewFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Columns';
		priority: 10;
		items: [ self columns ];
		column: 'Name' text: #name;
		column: 'Source' text: [ :each | each node source ]
]

{ #category : #accessing }
PsqlView >> isMaterialized [
	^ isMaterialized ifNil: [ false ]
]

{ #category : #accessing }
PsqlView >> isMaterialized: anObject [
	isMaterialized := anObject
]

{ #category : #accessing }
PsqlView >> tables [
	^ tables ifNil: [ tables := OrderedCollection new ]
]

{ #category : #accessing }
PsqlView >> tables: anObject [
	tables := anObject
]
