Class {
	#name : #PsqlBeginCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlBeginCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlBeginCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlBeginCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBeginCommand: self
]

{ #category : #generated }
PsqlBeginCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlBeginCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
