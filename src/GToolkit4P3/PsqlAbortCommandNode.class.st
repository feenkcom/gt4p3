Class {
	#name : #PsqlAbortCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAbortCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAbortCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAbortCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAbortCommand: self
]

{ #category : #generated }
PsqlAbortCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAbortCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
