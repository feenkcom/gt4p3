Class {
	#name : #PsqlArrayExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlArrayExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayExpression: self
]

{ #category : #generated }
PsqlArrayExpressionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #'generated-initialize-release' }
PsqlArrayExpressionNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlArrayExpressionNode >> values [
	^ values
]

{ #category : #generated }
PsqlArrayExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
