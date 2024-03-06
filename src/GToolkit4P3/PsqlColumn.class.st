Class {
	#name : #PsqlColumn,
	#superclass : #PsqlModel,
	#instVars : [
		'table',
		'nullable',
		'defaultValue',
		'type'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlColumn >> defaultValue [
	^ defaultValue
]

{ #category : #accessing }
PsqlColumn >> defaultValue: anObject [
	defaultValue := anObject
]

{ #category : #accessing }
PsqlColumn >> isPrimaryKey [
	^ table constraints
		anySatisfy: [ :each | each isPrimaryKey and: [ each columns includes: self ] ]
]

{ #category : #accessing }
PsqlColumn >> isUnique [
	^ table constraints
		anySatisfy: [ :each | each isUnique and: [ each columns includes: self ] ]
]

{ #category : #accessing }
PsqlColumn >> nullable [
	^ nullable ifNil: [ true ]
]

{ #category : #accessing }
PsqlColumn >> nullable: aBoolean [
	nullable := aBoolean
]

{ #category : #accessing }
PsqlColumn >> table [
	^ table
]

{ #category : #accessing }
PsqlColumn >> table: anObject [
	table := anObject
]

{ #category : #accessing }
PsqlColumn >> type [
	^ type
]

{ #category : #accessing }
PsqlColumn >> type: anObject [
	type := anObject
]
