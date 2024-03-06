Class {
	#name : #PsqlFetchCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'cursorName',
		'count'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlFetchCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlFetchCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlFetchCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFetchCommand: self
]

{ #category : #generated }
PsqlFetchCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlFetchCommandNode >> count [
	^ count
]

{ #category : #generated }
PsqlFetchCommandNode >> count: aPsqlNumberNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aPsqlNumberNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
PsqlFetchCommandNode >> cursorName [
	^ cursorName
]

{ #category : #generated }
PsqlFetchCommandNode >> cursorName: aSmaCCToken [
	cursorName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlFetchCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlFetchCommandNode >> nodeVariables [
	^ #(#count)
]

{ #category : #generated }
PsqlFetchCommandNode >> tokenVariables [
	^ #(#cursorName)
]
