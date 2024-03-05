Class {
	#name : #PsqlExpressionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlExpressionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlExpressionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
PsqlExpressionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlExpressionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
