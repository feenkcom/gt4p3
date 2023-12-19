Class {
	#name : #P3PrimaryKeyConstraint,
	#superclass : #P3Constraint,
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3PrimaryKeyConstraint class >> handlesType: type [
	^ type = 'PRIMARY KEY'
]

{ #category : #accessing }
P3PrimaryKeyConstraint >> constraintType [
	^ 'PRIMARY KEY'
]

{ #category : #accessing }
P3PrimaryKeyConstraint >> sqlDescription [
	^ 'PRIMARY KEY (' , ($, join: self constraintColumns) ,')'
]
