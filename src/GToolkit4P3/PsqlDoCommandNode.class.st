Class {
	#name : #PsqlDoCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'code',
		'langName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDoCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDoCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDoCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoCommand: self
]

{ #category : #generated }
PsqlDoCommandNode >> code [
	^ code
]

{ #category : #generated }
PsqlDoCommandNode >> code: aSmaCCToken [
	code := aSmaCCToken
]

{ #category : #generated }
PsqlDoCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDoCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDoCommandNode >> langName [
	^ langName
]

{ #category : #generated }
PsqlDoCommandNode >> langName: aSmaCCToken [
	langName := aSmaCCToken
]

{ #category : #generated }
PsqlDoCommandNode >> tokenVariables [
	^ #(#code #langName)
]
