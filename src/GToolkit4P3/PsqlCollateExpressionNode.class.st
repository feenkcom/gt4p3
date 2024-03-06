Class {
	#name : #PsqlCollateExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value',
		'collation'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCollateExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCollateExpression: self
]

{ #category : #generated }
PsqlCollateExpressionNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlCollateExpressionNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlCollateExpressionNode >> nodeVariables [
	^ #(#value #collation)
]

{ #category : #generated }
PsqlCollateExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlCollateExpressionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
