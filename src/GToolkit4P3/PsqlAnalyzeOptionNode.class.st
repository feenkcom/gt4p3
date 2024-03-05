Class {
	#name : #PsqlAnalyzeOptionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAnalyzeOptionNode >> _ [
	^ _
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnalyzeOption: self
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> tokenVariables [
	^ #(#_)
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> value [
	^ value
]

{ #category : #generated }
PsqlAnalyzeOptionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
