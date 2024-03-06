Class {
	#name : #PsqlExplainCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'statement',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlExplainCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlExplainCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlExplainCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExplainCommand: self
]

{ #category : #generated }
PsqlExplainCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlExplainCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlExplainCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlExplainCommandNode >> nodeVariables [
	^ #(#statement)
]

{ #category : #generated }
PsqlExplainCommandNode >> statement [
	^ statement
]

{ #category : #generated }
PsqlExplainCommandNode >> statement: aPsqlProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aPsqlProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
PsqlExplainCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlExplainCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
