Class {
	#name : #PsqlDropFunctionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names',
		'argTypes',
		'argNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropFunctionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropFunctionCommand: self
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> compositeNodeVariables [
	^ #(#names #argTypes)
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #'generated-initialize-release' }
PsqlDropFunctionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropFunctionCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
