Class {
	#name : #PsqlDropOperatorCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'operatorName',
		'leftTypes',
		'rightTypes',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropOperatorCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropOperatorCommand: self
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> compositeTokenVariables [
	^ #(#_s #leftTypes #rightTypes)
]

{ #category : #'generated-initialize-release' }
PsqlDropOperatorCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	leftTypes := OrderedCollection new: 2.
	rightTypes := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> leftTypes [
	^ leftTypes
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> leftTypes: anOrderedCollection [
	leftTypes := anOrderedCollection
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> operatorName [
	^ operatorName
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> rightTypes [
	^ rightTypes
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> rightTypes: anOrderedCollection [
	rightTypes := anOrderedCollection
]

{ #category : #generated }
PsqlDropOperatorCommandNode >> tokenVariables [
	^ #(#operatorName)
]
