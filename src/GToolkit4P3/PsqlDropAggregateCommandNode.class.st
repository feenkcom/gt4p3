Class {
	#name : #PsqlDropAggregateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'aggregateSignatures'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropAggregateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropAggregateCommand: self
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> aggregateSignatures [
	^ aggregateSignatures
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> aggregateSignatures: anOrderedCollection [
	self setParents: self aggregateSignatures to: nil.
	aggregateSignatures := anOrderedCollection.
	self setParents: self aggregateSignatures to: self
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> compositeNodeVariables [
	^ #(#aggregateSignatures)
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropAggregateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	aggregateSignatures := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropAggregateCommandNode >> nodeVariables [
	^ #(#name)
]
