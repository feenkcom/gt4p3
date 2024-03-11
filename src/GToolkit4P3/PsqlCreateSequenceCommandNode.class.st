Class {
	#name : #PsqlCreateSequenceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'sequenceName',
		'dataTypes',
		'increments',
		'minValues',
		'maxValues',
		'startWiths',
		'caches',
		'ownedBies'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateSequenceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateSequenceCommand: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> caches [
	^ caches
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> caches: anOrderedCollection [
	self setParents: self caches to: nil.
	caches := anOrderedCollection.
	self setParents: self caches to: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> compositeNodeVariables [
	^ #(#dataTypes #increments #minValues #maxValues #startWiths #caches #ownedBies)
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> dataTypes [
	^ dataTypes
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> dataTypes: anOrderedCollection [
	self setParents: self dataTypes to: nil.
	dataTypes := anOrderedCollection.
	self setParents: self dataTypes to: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> increments [
	^ increments
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> increments: anOrderedCollection [
	self setParents: self increments to: nil.
	increments := anOrderedCollection.
	self setParents: self increments to: self
]

{ #category : #'generated-initialize-release' }
PsqlCreateSequenceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	dataTypes := OrderedCollection new: 2.
	increments := OrderedCollection new: 2.
	minValues := OrderedCollection new: 2.
	maxValues := OrderedCollection new: 2.
	startWiths := OrderedCollection new: 2.
	caches := OrderedCollection new: 2.
	ownedBies := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> maxValues [
	^ maxValues
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> maxValues: anOrderedCollection [
	self setParents: self maxValues to: nil.
	maxValues := anOrderedCollection.
	self setParents: self maxValues to: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> minValues [
	^ minValues
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> minValues: anOrderedCollection [
	self setParents: self minValues to: nil.
	minValues := anOrderedCollection.
	self setParents: self minValues to: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> nodeVariables [
	^ #(#sequenceName)
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> ownedBies [
	^ ownedBies
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> ownedBies: anOrderedCollection [
	self setParents: self ownedBies to: nil.
	ownedBies := anOrderedCollection.
	self setParents: self ownedBies to: self
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> sequenceName [
	^ sequenceName
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> sequenceName: aPsqlQualifiedNameNode [
	self sequenceName notNil ifTrue: [ self sequenceName parent: nil ].
	sequenceName := aPsqlQualifiedNameNode.
	self sequenceName notNil ifTrue: [ self sequenceName parent: self ]
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> startWiths [
	^ startWiths
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> startWiths: anOrderedCollection [
	self setParents: self startWiths to: nil.
	startWiths := anOrderedCollection.
	self setParents: self startWiths to: self
]
