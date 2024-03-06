Class {
	#name : #PsqlMergeDeleteNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMergeDeleteNode >> _ [
	^ _
]

{ #category : #generated }
PsqlMergeDeleteNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlMergeDeleteNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeDelete: self
]

{ #category : #generated }
PsqlMergeDeleteNode >> tokenVariables [
	^ #(#_)
]
