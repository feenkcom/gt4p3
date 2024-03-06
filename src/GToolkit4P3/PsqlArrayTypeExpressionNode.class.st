Class {
	#name : #PsqlArrayTypeExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'baseType'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlArrayTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitArrayTypeExpression: self
]

{ #category : #generated }
PsqlArrayTypeExpressionNode >> baseType [
	^ baseType
]

{ #category : #generated }
PsqlArrayTypeExpressionNode >> baseType: aPsqlProgramNode [
	self baseType notNil ifTrue: [ self baseType parent: nil ].
	baseType := aPsqlProgramNode.
	self baseType notNil ifTrue: [ self baseType parent: self ]
]

{ #category : #generated }
PsqlArrayTypeExpressionNode >> nodeVariables [
	^ #(#baseType)
]
