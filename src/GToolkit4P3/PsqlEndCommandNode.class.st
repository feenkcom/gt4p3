Class {
	#name : #PsqlEndCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlEndCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlEndCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlEndCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndCommand: self
]

{ #category : #generated }
PsqlEndCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlEndCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
