Class {
	#name : #PsqlOrderByClauseNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'args'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlOrderByClauseNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlOrderByClauseNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlOrderByClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOrderByClause: self
]

{ #category : #generated }
PsqlOrderByClauseNode >> args [
	^ args
]

{ #category : #generated }
PsqlOrderByClauseNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlOrderByClauseNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
PsqlOrderByClauseNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlOrderByClauseNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
]
