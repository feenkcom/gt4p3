Class {
	#name : #PsqlCallCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_',
		'callExpression'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCallCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlCallCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlCallCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallCommand: self
]

{ #category : #generated }
PsqlCallCommandNode >> callExpression [
	^ callExpression
]

{ #category : #generated }
PsqlCallCommandNode >> callExpression: aPsqlFunctionCallNode [
	self callExpression notNil ifTrue: [ self callExpression parent: nil ].
	callExpression := aPsqlFunctionCallNode.
	self callExpression notNil ifTrue: [ self callExpression parent: self ]
]

{ #category : #generated }
PsqlCallCommandNode >> nodeVariables [
	^ #(#callExpression)
]

{ #category : #generated }
PsqlCallCommandNode >> tokenVariables [
	^ #(#_)
]
