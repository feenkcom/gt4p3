Class {
	#name : #P3Constraint,
	#superclass : #Object,
	#instVars : [
		'constraintSchema',
		'constraintName',
		'tableSchema',
		'tableName',
		'isDeferrable',
		'initiallyDeferred',
		'enforced',
		'constraintColumns'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3Constraint class >> allForTable: clientTable [
	| statement result specificClass constraint |
	statement := clientTable client format: 'SELECT constraint_schema, constraint_name, constraint_type, is_deferrable, initially_deferred, enforced FROM information_schema.table_constraints WHERE table_schema = $1 AND table_name= $2'.
	result := statement query: { clientTable schema name . clientTable name }.
	^ result data collect: [ :row |
		specificClass := self subclasses 
							detect: [ :each | each handlesType: row third ] 
							ifNone: [ self error: 'unknown contraint type' ].
		constraint := specificClass new.
		constraint
			tableSchema: clientTable schema name;
			tableName: clientTable name;
			constraintSchema: row first;
			constraintName: row second;
			isDeferrable: row fourth = 'YES';
			initiallyDeferred: row fifth = 'YES';
			enforced: row = 'YES'.
		constraint loadDetailsUsing: clientTable client.
		constraint ]
]

{ #category : #accessing }
P3Constraint class >> handlesType: type [
	self subclassResponsibility
]

{ #category : #accessing }
P3Constraint >> constraintColumns [
	^ constraintColumns
]

{ #category : #accessing }
P3Constraint >> constraintColumns: anObject [
	constraintColumns := anObject
]

{ #category : #accessing }
P3Constraint >> constraintName [
	^ constraintName
]

{ #category : #accessing }
P3Constraint >> constraintName: anObject [
	constraintName := anObject
]

{ #category : #accessing }
P3Constraint >> constraintSchema [
	^ constraintSchema
]

{ #category : #accessing }
P3Constraint >> constraintSchema: anObject [
	constraintSchema := anObject
]

{ #category : #accessing }
P3Constraint >> constraintType [
	self subclassResponsibility
]

{ #category : #accessing }
P3Constraint >> enforced [
	^ enforced
]

{ #category : #accessing }
P3Constraint >> enforced: anObject [
	enforced := anObject
]

{ #category : #accessing }
P3Constraint >> initiallyDeferred [
	^ initiallyDeferred
]

{ #category : #accessing }
P3Constraint >> initiallyDeferred: anObject [
	initiallyDeferred := anObject
]

{ #category : #testing }
P3Constraint >> isCheck [
	^ self constraintType = 'CHECK'
]

{ #category : #accessing }
P3Constraint >> isDeferrable [
	^ isDeferrable
]

{ #category : #accessing }
P3Constraint >> isDeferrable: anObject [
	isDeferrable := anObject
]

{ #category : #testing }
P3Constraint >> isForeignKey [
	^ self constraintType = 'FOREIGN KEY'
]

{ #category : #testing }
P3Constraint >> isPrimaryKey [
	^ self constraintType = 'PRIMARY KEY'
]

{ #category : #testing }
P3Constraint >> isUnique [
	^ self constraintType = 'UNIQUE'
]

{ #category : #accessing }
P3Constraint >> loadDetailsUsing: client [
	| statement result |
	statement := client format: 'SELECT column_name FROM information_schema.key_column_usage WHERE constraint_schema = $1 AND constraint_name = $2'.
	result := statement query: { self constraintSchema . self constraintName }.
	self constraintColumns: result firstColumnData
]

{ #category : #accessing }
P3Constraint >> printOn: stream [
	super printOn: stream.
	stream 
		nextPut: $(; 
		nextPutAll: self constraintName; 
		space;
		nextPutAll: self sqlDescription;
		nextPut: $)
]

{ #category : #accessing }
P3Constraint >> sqlDescription [
	self subclassResponsibility
]

{ #category : #accessing }
P3Constraint >> tableName [
	^ tableName
]

{ #category : #accessing }
P3Constraint >> tableName: anObject [
	tableName := anObject
]

{ #category : #accessing }
P3Constraint >> tableSchema [
	^ tableSchema
]

{ #category : #accessing }
P3Constraint >> tableSchema: anObject [
	tableSchema := anObject
]