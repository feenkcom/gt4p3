Class {
	#name : #PsqlBetweenExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value',
		'lower',
		'upper'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlBetweenExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBetweenExpression: self
]

{ #category : #generated }
PsqlBetweenExpressionNode >> lower [
	^ lower
]

{ #category : #generated }
PsqlBetweenExpressionNode >> lower: aPsqlExpressionNode [
	self lower notNil ifTrue: [ self lower parent: nil ].
	lower := aPsqlExpressionNode.
	self lower notNil ifTrue: [ self lower parent: self ]
]

{ #category : #generated }
PsqlBetweenExpressionNode >> nodeVariables [
	^ #(#value #lower #upper)
]

{ #category : #generated }
PsqlBetweenExpressionNode >> upper [
	^ upper
]

{ #category : #generated }
PsqlBetweenExpressionNode >> upper: aPsqlExpressionNode [
	self upper notNil ifTrue: [ self upper parent: nil ].
	upper := aPsqlExpressionNode.
	self upper notNil ifTrue: [ self upper parent: self ]
]

{ #category : #generated }
PsqlBetweenExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlBetweenExpressionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
