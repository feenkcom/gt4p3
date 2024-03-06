Class {
	#name : #PsqlRollbackPreparedCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'transactionId'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRollbackPreparedCommand: self
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlRollbackPreparedCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> tokenVariables [
	^ #(#transactionId)
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> transactionId [
	^ transactionId
]

{ #category : #generated }
PsqlRollbackPreparedCommandNode >> transactionId: aSmaCCToken [
	transactionId := aSmaCCToken
]
