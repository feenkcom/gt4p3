Class {
	#name : #PsqlRollbackCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlRollbackCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlRollbackCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlRollbackCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRollbackCommand: self
]

{ #category : #generated }
PsqlRollbackCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlRollbackCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
