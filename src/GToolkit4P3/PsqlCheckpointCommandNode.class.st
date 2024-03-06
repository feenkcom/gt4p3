Class {
	#name : #PsqlCheckpointCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCheckpointCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlCheckpointCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlCheckpointCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCheckpointCommand: self
]

{ #category : #generated }
PsqlCheckpointCommandNode >> tokenVariables [
	^ #(#_)
]
