Class {
	#name : #PsqlLoadCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_',
		'_filename'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlLoadCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlLoadCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlLoadCommandNode >> _filename [
	^ _filename
]

{ #category : #generated }
PsqlLoadCommandNode >> _filename: aSmaCCToken [
	_filename := aSmaCCToken
]

{ #category : #generated }
PsqlLoadCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLoadCommand: self
]

{ #category : #generated }
PsqlLoadCommandNode >> tokenVariables [
	^ #(#_ #_filename)
]
