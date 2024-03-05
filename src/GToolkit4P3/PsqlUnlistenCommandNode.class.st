Class {
	#name : #PsqlUnlistenCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'channel'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlUnlistenCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlUnlistenCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlUnlistenCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnlistenCommand: self
]

{ #category : #generated }
PsqlUnlistenCommandNode >> channel [
	^ channel
]

{ #category : #generated }
PsqlUnlistenCommandNode >> channel: aSmaCCToken [
	channel := aSmaCCToken
]

{ #category : #generated }
PsqlUnlistenCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlUnlistenCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlUnlistenCommandNode >> tokenVariables [
	^ #(#channel)
]
