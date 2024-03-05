Class {
	#name : #PsqlWithinGroupNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'orderBy'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlWithinGroupNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlWithinGroupNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlWithinGroupNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWithinGroup: self
]

{ #category : #generated }
PsqlWithinGroupNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlWithinGroupNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlWithinGroupNode >> nodeVariables [
	^ #(#orderBy)
]

{ #category : #generated }
PsqlWithinGroupNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
PsqlWithinGroupNode >> orderBy: aPsqlOrderByClauseNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aPsqlOrderByClauseNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]
