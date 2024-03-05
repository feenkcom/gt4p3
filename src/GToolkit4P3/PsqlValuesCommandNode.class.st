Class {
	#name : #PsqlValuesCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'values',
		'limit',
		'start',
		'fetchCount',
		'sortExpressions',
		'operators'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlValuesCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlValuesCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlValuesCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValuesCommand: self
]

{ #category : #generated }
PsqlValuesCommandNode >> compositeNodeVariables [
	^ #(#values #sortExpressions)
]

{ #category : #generated }
PsqlValuesCommandNode >> compositeTokenVariables [
	^ #(#_s #operators)
]

{ #category : #generated }
PsqlValuesCommandNode >> fetchCount [
	^ fetchCount
]

{ #category : #generated }
PsqlValuesCommandNode >> fetchCount: aPsqlNumberNode [
	self fetchCount notNil ifTrue: [ self fetchCount parent: nil ].
	fetchCount := aPsqlNumberNode.
	self fetchCount notNil ifTrue: [ self fetchCount parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlValuesCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	sortExpressions := OrderedCollection new: 2.
	operators := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlValuesCommandNode >> limit [
	^ limit
]

{ #category : #generated }
PsqlValuesCommandNode >> limit: aPsqlNumberNode [
	self limit notNil ifTrue: [ self limit parent: nil ].
	limit := aPsqlNumberNode.
	self limit notNil ifTrue: [ self limit parent: self ]
]

{ #category : #generated }
PsqlValuesCommandNode >> nodeVariables [
	^ #(#limit #start #fetchCount)
]

{ #category : #generated }
PsqlValuesCommandNode >> operators [
	^ operators
]

{ #category : #generated }
PsqlValuesCommandNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : #generated }
PsqlValuesCommandNode >> sortExpressions [
	^ sortExpressions
]

{ #category : #generated }
PsqlValuesCommandNode >> sortExpressions: anOrderedCollection [
	self setParents: self sortExpressions to: nil.
	sortExpressions := anOrderedCollection.
	self setParents: self sortExpressions to: self
]

{ #category : #generated }
PsqlValuesCommandNode >> start [
	^ start
]

{ #category : #generated }
PsqlValuesCommandNode >> start: aPsqlNumberNode [
	self start notNil ifTrue: [ self start parent: nil ].
	start := aPsqlNumberNode.
	self start notNil ifTrue: [ self start parent: self ]
]

{ #category : #generated }
PsqlValuesCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlValuesCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
