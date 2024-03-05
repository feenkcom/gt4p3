Class {
	#name : #PsqlPrepareTransactionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'transactionId'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrepareTransactionCommand: self
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlPrepareTransactionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> tokenVariables [
	^ #(#transactionId)
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> transactionId [
	^ transactionId
]

{ #category : #generated }
PsqlPrepareTransactionCommandNode >> transactionId: aSmaCCToken [
	transactionId := aSmaCCToken
]
