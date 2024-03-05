Class {
	#name : #PsqlFunctionCallNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'function',
		'args',
		'argNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlFunctionCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionCall: self
]

{ #category : #generated }
PsqlFunctionCallNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlFunctionCallNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlFunctionCallNode >> args [
	^ args
]

{ #category : #generated }
PsqlFunctionCallNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlFunctionCallNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
PsqlFunctionCallNode >> compositeTokenVariables [
	^ #(#argNames #_s)
]

{ #category : #generated }
PsqlFunctionCallNode >> function [
	^ function
]

{ #category : #generated }
PsqlFunctionCallNode >> function: aPsqlExpressionNode [
	self function notNil ifTrue: [ self function parent: nil ].
	function := aPsqlExpressionNode.
	self function notNil ifTrue: [ self function parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlFunctionCallNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlFunctionCallNode >> nodeVariables [
	^ #(#function)
]
