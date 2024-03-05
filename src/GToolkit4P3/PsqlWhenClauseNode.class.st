Class {
	#name : #PsqlWhenClauseNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'merge',
		'condition'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlWhenClauseNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlWhenClauseNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlWhenClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWhenClause: self
]

{ #category : #generated }
PsqlWhenClauseNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlWhenClauseNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlWhenClauseNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlWhenClauseNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlWhenClauseNode >> merge [
	^ merge
]

{ #category : #generated }
PsqlWhenClauseNode >> merge: aPsqlProgramNode [
	self merge notNil ifTrue: [ self merge parent: nil ].
	merge := aPsqlProgramNode.
	self merge notNil ifTrue: [ self merge parent: self ]
]

{ #category : #generated }
PsqlWhenClauseNode >> nodeVariables [
	^ #(#merge #condition)
]
