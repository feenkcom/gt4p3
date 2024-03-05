Class {
	#name : #PsqlNotifyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'channel',
		'payload'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlNotifyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlNotifyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlNotifyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNotifyCommand: self
]

{ #category : #generated }
PsqlNotifyCommandNode >> channel [
	^ channel
]

{ #category : #generated }
PsqlNotifyCommandNode >> channel: aSmaCCToken [
	channel := aSmaCCToken
]

{ #category : #generated }
PsqlNotifyCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlNotifyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlNotifyCommandNode >> payload [
	^ payload
]

{ #category : #generated }
PsqlNotifyCommandNode >> payload: aSmaCCToken [
	payload := aSmaCCToken
]

{ #category : #generated }
PsqlNotifyCommandNode >> tokenVariables [
	^ #(#channel #payload)
]
