Class {
	#name : #PsqlConflictActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'columnValues',
		'subSelects',
		'condition'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlConflictActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlConflictActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlConflictActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConflictAction: self
]

{ #category : #generated }
PsqlConflictActionNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlConflictActionNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlConflictActionNode >> columnValues [
	^ columnValues
]

{ #category : #generated }
PsqlConflictActionNode >> columnValues: anOrderedCollection [
	self setParents: self columnValues to: nil.
	columnValues := anOrderedCollection.
	self setParents: self columnValues to: self
]

{ #category : #generated }
PsqlConflictActionNode >> compositeNodeVariables [
	^ #(#columnNames #columnValues #subSelects)
]

{ #category : #generated }
PsqlConflictActionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlConflictActionNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlConflictActionNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlConflictActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	columnValues := OrderedCollection new: 2.
	subSelects := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlConflictActionNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
PsqlConflictActionNode >> subSelects [
	^ subSelects
]

{ #category : #generated }
PsqlConflictActionNode >> subSelects: anOrderedCollection [
	self setParents: self subSelects to: nil.
	subSelects := anOrderedCollection.
	self setParents: self subSelects to: self
]
