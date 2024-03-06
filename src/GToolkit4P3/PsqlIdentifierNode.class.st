Class {
	#name : #PsqlIdentifierNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]

{ #category : #generated }
PsqlIdentifierNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlIdentifierNode >> value [
	^ value
]

{ #category : #generated }
PsqlIdentifierNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
