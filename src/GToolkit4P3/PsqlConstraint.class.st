Class {
	#name : #PsqlConstraint,
	#superclass : #PsqlModel,
	#instVars : [
		'table',
		'columns'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlConstraint >> columns [
	^ columns ifNil: [ columns := OrderedCollection new ]
]

{ #category : #accessing }
PsqlConstraint >> columns: anObject [
	columns := anObject
]

{ #category : #accessing }
PsqlConstraint >> constraintColumns [
	^ (self columns collect: #name) asArray
]

{ #category : #accessing }
PsqlConstraint >> constraintName [
	^ name
		ifNil: [ (self class name allButFirst: 4) asString , '_'
				, self node startPosition printString ]
]

{ #category : #accessing }
PsqlConstraint >> install [
]

{ #category : #accessing }
PsqlConstraint >> isForeignKey [
	^ false
]

{ #category : #accessing }
PsqlConstraint >> isPrimaryKey [
	^ false
]

{ #category : #accessing }
PsqlConstraint >> isUnique [
	^ false
]

{ #category : #accessing }
PsqlConstraint >> table [
	^ table
]

{ #category : #accessing }
PsqlConstraint >> table: anObject [
	table := anObject
]

{ #category : #accessing }
PsqlConstraint >> tableName [
	^ self table name
]
