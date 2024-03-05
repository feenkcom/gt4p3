Class {
	#name : #PsqlReleaseSavepointCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'savepointName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReleaseSavepointCommand: self
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlReleaseSavepointCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> savepointName [
	^ savepointName
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> savepointName: aSmaCCToken [
	savepointName := aSmaCCToken
]

{ #category : #generated }
PsqlReleaseSavepointCommandNode >> tokenVariables [
	^ #(#savepointName)
]
