Class {
	#name : #PsqlBinaryExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'left',
		'right'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
PsqlBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
PsqlBinaryExpressionNode >> left: aPsqlExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aPsqlExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
PsqlBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
PsqlBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
PsqlBinaryExpressionNode >> right: aPsqlExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aPsqlExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]
