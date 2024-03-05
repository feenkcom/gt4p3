Class {
	#name : #PsqlPrepareCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'statement',
		'dataTypes'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlPrepareCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlPrepareCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlPrepareCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPrepareCommand: self
]

{ #category : #generated }
PsqlPrepareCommandNode >> compositeNodeVariables [
	^ #(#dataTypes)
]

{ #category : #generated }
PsqlPrepareCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlPrepareCommandNode >> dataTypes [
	^ dataTypes
]

{ #category : #generated }
PsqlPrepareCommandNode >> dataTypes: anOrderedCollection [
	self setParents: self dataTypes to: nil.
	dataTypes := anOrderedCollection.
	self setParents: self dataTypes to: self
]

{ #category : #'generated-initialize-release' }
PsqlPrepareCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	dataTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlPrepareCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlPrepareCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlPrepareCommandNode >> nodeVariables [
	^ #(#name #statement)
]

{ #category : #generated }
PsqlPrepareCommandNode >> statement [
	^ statement
]

{ #category : #generated }
PsqlPrepareCommandNode >> statement: aPsqlProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aPsqlProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]
