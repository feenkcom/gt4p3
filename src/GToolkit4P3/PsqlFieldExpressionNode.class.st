Class {
	#name : #PsqlFieldExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'receiver',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlFieldExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFieldExpression: self
]

{ #category : #generated }
PsqlFieldExpressionNode >> name [
	^ name
]

{ #category : #generated }
PsqlFieldExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
PsqlFieldExpressionNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : #generated }
PsqlFieldExpressionNode >> receiver [
	^ receiver
]

{ #category : #generated }
PsqlFieldExpressionNode >> receiver: aPsqlExpressionNode [
	self receiver notNil ifTrue: [ self receiver parent: nil ].
	receiver := aPsqlExpressionNode.
	self receiver notNil ifTrue: [ self receiver parent: self ]
]

{ #category : #generated }
PsqlFieldExpressionNode >> tokenVariables [
	^ #(#name)
]
