Class {
	#name : #PsqlLikeExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'string',
		'pattern',
		'escape'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlLikeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLikeExpression: self
]

{ #category : #generated }
PsqlLikeExpressionNode >> escape [
	^ escape
]

{ #category : #generated }
PsqlLikeExpressionNode >> escape: aPsqlExpressionNode [
	self escape notNil ifTrue: [ self escape parent: nil ].
	escape := aPsqlExpressionNode.
	self escape notNil ifTrue: [ self escape parent: self ]
]

{ #category : #generated }
PsqlLikeExpressionNode >> nodeVariables [
	^ #(#string #pattern #escape)
]

{ #category : #generated }
PsqlLikeExpressionNode >> pattern [
	^ pattern
]

{ #category : #generated }
PsqlLikeExpressionNode >> pattern: aPsqlExpressionNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aPsqlExpressionNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
PsqlLikeExpressionNode >> string [
	^ string
]

{ #category : #generated }
PsqlLikeExpressionNode >> string: aPsqlExpressionNode [
	self string notNil ifTrue: [ self string parent: nil ].
	string := aPsqlExpressionNode.
	self string notNil ifTrue: [ self string parent: self ]
]
