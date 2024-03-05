Class {
	#name : #PsqlRollbackToSavepointCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'savepointName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRollbackToSavepointCommand: self
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlRollbackToSavepointCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> savepointName [
	^ savepointName
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> savepointName: aSmaCCToken [
	savepointName := aSmaCCToken
]

{ #category : #generated }
PsqlRollbackToSavepointCommandNode >> tokenVariables [
	^ #(#savepointName)
]
