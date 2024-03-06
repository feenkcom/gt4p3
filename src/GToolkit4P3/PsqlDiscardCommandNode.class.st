Class {
	#name : #PsqlDiscardCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDiscardCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDiscardCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDiscardCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDiscardCommand: self
]

{ #category : #generated }
PsqlDiscardCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDiscardCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
