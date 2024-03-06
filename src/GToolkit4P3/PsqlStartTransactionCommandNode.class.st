Class {
	#name : #PsqlStartTransactionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'transactionModes'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlStartTransactionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStartTransactionCommand: self
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> compositeNodeVariables [
	^ #(#transactionModes)
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlStartTransactionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	transactionModes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> transactionModes [
	^ transactionModes
]

{ #category : #generated }
PsqlStartTransactionCommandNode >> transactionModes: anOrderedCollection [
	self setParents: self transactionModes to: nil.
	transactionModes := anOrderedCollection.
	self setParents: self transactionModes to: self
]
