Class {
	#name : #PsqlCommitPreparedCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'transactionId'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCommitPreparedCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommitPreparedCommand: self
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCommitPreparedCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> tokenVariables [
	^ #(#transactionId)
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> transactionId [
	^ transactionId
]

{ #category : #generated }
PsqlCommitPreparedCommandNode >> transactionId: aSmaCCToken [
	transactionId := aSmaCCToken
]
