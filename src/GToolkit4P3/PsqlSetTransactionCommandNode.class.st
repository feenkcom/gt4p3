Class {
	#name : #PsqlSetTransactionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'transactionModes',
		'snapshotId'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSetTransactionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetTransactionCommand: self
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> compositeNodeVariables [
	^ #(#transactionModes)
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlSetTransactionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	transactionModes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> snapshotId [
	^ snapshotId
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> snapshotId: aSmaCCToken [
	snapshotId := aSmaCCToken
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> tokenVariables [
	^ #(#snapshotId)
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> transactionModes [
	^ transactionModes
]

{ #category : #generated }
PsqlSetTransactionCommandNode >> transactionModes: anOrderedCollection [
	self setParents: self transactionModes to: nil.
	transactionModes := anOrderedCollection.
	self setParents: self transactionModes to: self
]
