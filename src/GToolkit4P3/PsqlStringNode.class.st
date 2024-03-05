Class {
	#name : #PsqlStringNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : #generated }
PsqlStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlStringNode >> value [
	^ value
]

{ #category : #generated }
PsqlStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
