Class {
	#name : #PsqlAggregateSignatureNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'argTypes',
		'argNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAggregateSignatureNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAggregateSignatureNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAggregateSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAggregateSignature: self
]

{ #category : #generated }
PsqlAggregateSignatureNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlAggregateSignatureNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlAggregateSignatureNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlAggregateSignatureNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlAggregateSignatureNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlAggregateSignatureNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #'generated-initialize-release' }
PsqlAggregateSignatureNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
]
