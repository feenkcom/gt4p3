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
