Class {
	#name : #P3UniqueConstraint,
	#superclass : #P3Constraint,
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3UniqueConstraint class >> handlesType: type [
	^ type = 'UNIQUE'
]

{ #category : #accessing }
P3UniqueConstraint >> constraintType [
	^ 'UNIQUE'
]

{ #category : #accessing }
P3UniqueConstraint >> sqlDescription [
	^ 'UNIQUE (' , ($, join: self constraintColumns) ,')'
]
