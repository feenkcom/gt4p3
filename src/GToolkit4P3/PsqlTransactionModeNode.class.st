Class {
	#name : #PsqlTransactionModeNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTransactionModeNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlTransactionModeNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlTransactionModeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTransactionMode: self
]

{ #category : #generated }
PsqlTransactionModeNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlTransactionModeNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
