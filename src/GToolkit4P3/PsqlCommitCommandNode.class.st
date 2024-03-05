Class {
	#name : #PsqlCommitCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCommitCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCommitCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCommitCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommitCommand: self
]

{ #category : #generated }
PsqlCommitCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCommitCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]
