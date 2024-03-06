Class {
	#name : #PsqlSavepointCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_',
		'savepointName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSavepointCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlSavepointCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlSavepointCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSavepointCommand: self
]

{ #category : #generated }
PsqlSavepointCommandNode >> savepointName [
	^ savepointName
]

{ #category : #generated }
PsqlSavepointCommandNode >> savepointName: aSmaCCToken [
	savepointName := aSmaCCToken
]

{ #category : #generated }
PsqlSavepointCommandNode >> tokenVariables [
	^ #(#_ #savepointName)
]
