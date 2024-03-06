Class {
	#name : #PsqlNumberNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #generated }
PsqlNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlNumberNode >> value [
	^ value
]

{ #category : #generated }
PsqlNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
