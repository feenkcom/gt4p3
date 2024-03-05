Class {
	#name : #PsqlUnaryExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : #generated }
PsqlUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlUnaryExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlUnaryExpressionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
