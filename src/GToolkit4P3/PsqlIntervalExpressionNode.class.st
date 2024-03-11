Class {
	#name : #PsqlIntervalExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlIntervalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntervalExpression: self
]

{ #category : #generated }
PsqlIntervalExpressionNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlIntervalExpressionNode >> value [
	^ value
]

{ #category : #generated }
PsqlIntervalExpressionNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
