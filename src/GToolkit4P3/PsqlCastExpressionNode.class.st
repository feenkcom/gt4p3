Class {
	#name : #PsqlCastExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value',
		'type'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : #generated }
PsqlCastExpressionNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
PsqlCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
PsqlCastExpressionNode >> type: aPsqlProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aPsqlProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
PsqlCastExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlCastExpressionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
