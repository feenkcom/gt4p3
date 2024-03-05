Class {
	#name : #PsqlSubscriptExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value',
		'subscript'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSubscriptExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubscriptExpression: self
]

{ #category : #generated }
PsqlSubscriptExpressionNode >> nodeVariables [
	^ #(#value #subscript)
]

{ #category : #generated }
PsqlSubscriptExpressionNode >> subscript [
	^ subscript
]

{ #category : #generated }
PsqlSubscriptExpressionNode >> subscript: aPsqlExpressionNode [
	self subscript notNil ifTrue: [ self subscript parent: nil ].
	subscript := aPsqlExpressionNode.
	self subscript notNil ifTrue: [ self subscript parent: self ]
]

{ #category : #generated }
PsqlSubscriptExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlSubscriptExpressionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
