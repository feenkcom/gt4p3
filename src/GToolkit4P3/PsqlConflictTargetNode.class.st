Class {
	#name : #PsqlConflictTargetNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'indexColumnNames',
		'opclasses',
		'collations',
		'indexExpressions',
		'indexPredicate',
		'constraintName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlConflictTargetNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlConflictTargetNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlConflictTargetNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConflictTarget: self
]

{ #category : #generated }
PsqlConflictTargetNode >> collations [
	^ collations
]

{ #category : #generated }
PsqlConflictTargetNode >> collations: anOrderedCollection [
	self setParents: self collations to: nil.
	collations := anOrderedCollection.
	self setParents: self collations to: self
]

{ #category : #generated }
PsqlConflictTargetNode >> compositeNodeVariables [
	^ #(#collations #indexExpressions)
]

{ #category : #generated }
PsqlConflictTargetNode >> compositeTokenVariables [
	^ #(#_s #indexColumnNames #opclasses)
]

{ #category : #generated }
PsqlConflictTargetNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlConflictTargetNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlConflictTargetNode >> indexColumnNames [
	^ indexColumnNames
]

{ #category : #generated }
PsqlConflictTargetNode >> indexColumnNames: anOrderedCollection [
	indexColumnNames := anOrderedCollection
]

{ #category : #generated }
PsqlConflictTargetNode >> indexExpressions [
	^ indexExpressions
]

{ #category : #generated }
PsqlConflictTargetNode >> indexExpressions: anOrderedCollection [
	self setParents: self indexExpressions to: nil.
	indexExpressions := anOrderedCollection.
	self setParents: self indexExpressions to: self
]

{ #category : #generated }
PsqlConflictTargetNode >> indexPredicate [
	^ indexPredicate
]

{ #category : #generated }
PsqlConflictTargetNode >> indexPredicate: aPsqlExpressionNode [
	self indexPredicate notNil ifTrue: [ self indexPredicate parent: nil ].
	indexPredicate := aPsqlExpressionNode.
	self indexPredicate notNil ifTrue: [ self indexPredicate parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlConflictTargetNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	indexColumnNames := OrderedCollection new: 2.
	opclasses := OrderedCollection new: 2.
	collations := OrderedCollection new: 2.
	indexExpressions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlConflictTargetNode >> nodeVariables [
	^ #(#indexPredicate)
]

{ #category : #generated }
PsqlConflictTargetNode >> opclasses [
	^ opclasses
]

{ #category : #generated }
PsqlConflictTargetNode >> opclasses: anOrderedCollection [
	opclasses := anOrderedCollection
]

{ #category : #generated }
PsqlConflictTargetNode >> tokenVariables [
	^ #(#constraintName)
]
