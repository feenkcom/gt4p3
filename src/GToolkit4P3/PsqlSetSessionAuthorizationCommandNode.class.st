Class {
	#name : #PsqlSetSessionAuthorizationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetSessionAuthorizationCommand: self
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlSetSessionAuthorizationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> tokenVariables [
	^ #(#userName)
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlSetSessionAuthorizationCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]
