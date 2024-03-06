Class {
	#name : #PsqlLockCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlLockCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlLockCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlLockCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLockCommand: self
]

{ #category : #generated }
PsqlLockCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlLockCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlLockCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlLockCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlLockCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
