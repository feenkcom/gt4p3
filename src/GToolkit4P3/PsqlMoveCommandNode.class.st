Class {
	#name : #PsqlMoveCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'cursorName',
		'count'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMoveCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlMoveCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlMoveCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMoveCommand: self
]

{ #category : #generated }
PsqlMoveCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlMoveCommandNode >> count [
	^ count
]

{ #category : #generated }
PsqlMoveCommandNode >> count: aPsqlNumberNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aPsqlNumberNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
PsqlMoveCommandNode >> cursorName [
	^ cursorName
]

{ #category : #generated }
PsqlMoveCommandNode >> cursorName: aSmaCCToken [
	cursorName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlMoveCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlMoveCommandNode >> nodeVariables [
	^ #(#count)
]

{ #category : #generated }
PsqlMoveCommandNode >> tokenVariables [
	^ #(#cursorName)
]
