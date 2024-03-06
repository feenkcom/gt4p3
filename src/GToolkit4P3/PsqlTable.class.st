Class {
	#name : #PsqlTable,
	#superclass : #PsqlModel,
	#instVars : [
		'columns',
		'constraints',
		'schema'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlTable >> addColumn: aColumn [
	self columns add: aColumn
]

{ #category : #accessing }
PsqlTable >> addConstraint: aConstraint [
	self constraints add: aConstraint
]

{ #category : #accessing }
PsqlTable >> columnNamed: aString [
	^ self columns detect: [ :each | each name sameAs: aString ] ifNone: [  ]
]

{ #category : #accessing }
PsqlTable >> columns [
	^ columns ifNil: [ columns := OrderedCollection new ]
]

{ #category : #accessing }
PsqlTable >> columns: anObject [
	columns := anObject
]

{ #category : #accessing }
PsqlTable >> constraints [
	^ constraints ifNil: [ constraints := OrderedCollection new ]
]

{ #category : #accessing }
PsqlTable >> constraints: anObject [
	constraints := anObject
]

{ #category : #accessing }
PsqlTable >> gtColumnViewFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Columns';
		priority: 10;
		items: [ self columns ];
		column: 'Name' text: #name;
		column: 'Type' text: #type;
		column: 'Nullable?'
			text: [ :each | each nullable ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'PK?'
			text: [ :each | each isPrimaryKey ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'Unique?'
			text: [ :each | each isUnique ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'Default' text: [ :each | each defaultValue ifNil: [ '' ] ]
]

{ #category : #accessing }
PsqlTable >> schema [
	^ schema
]

{ #category : #accessing }
PsqlTable >> schema: anObject [
	schema := anObject
]
