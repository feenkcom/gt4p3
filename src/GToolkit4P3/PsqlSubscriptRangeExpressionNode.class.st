Class {
	#name : #PsqlSubscriptRangeExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'from',
		'to'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubscriptRangeExpression: self
]

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> from [
	^ from
]

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> from: aPsqlExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aPsqlExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> nodeVariables [
	^ #(#from #to)
]

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> to [
	^ to
]

{ #category : #generated }
PsqlSubscriptRangeExpressionNode >> to: aPsqlExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aPsqlExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]
