Class {
	#name : #PsqlListenCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_',
		'channel'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlListenCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlListenCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlListenCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListenCommand: self
]

{ #category : #generated }
PsqlListenCommandNode >> channel [
	^ channel
]

{ #category : #generated }
PsqlListenCommandNode >> channel: aSmaCCToken [
	channel := aSmaCCToken
]

{ #category : #generated }
PsqlListenCommandNode >> tokenVariables [
	^ #(#_ #channel)
]
