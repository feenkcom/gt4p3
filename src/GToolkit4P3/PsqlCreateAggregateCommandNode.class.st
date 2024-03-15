Class {
	#name : #PsqlCreateAggregateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'argNames',
		'argDataTypes',
		'sfuncs',
		'stateDataTypes',
		'stateDataSizes',
		'ffuncs',
		'combinefuncs',
		'serialfuncs',
		'deserialfuncs',
		'initialConditions',
		'msfuncs',
		'minvfuncs',
		'mstateDataTypes',
		'mstateDataSizes',
		'mffuncs',
		'minitialConditions',
		'sortOperators',
		'baseType'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateAggregateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateAggregateCommand: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> argDataTypes [
	^ argDataTypes
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> argDataTypes: anOrderedCollection [
	self setParents: self argDataTypes to: nil.
	argDataTypes := anOrderedCollection.
	self setParents: self argDataTypes to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> baseType [
	^ baseType
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> baseType: aSmaCCToken [
	baseType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> combinefuncs [
	^ combinefuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> combinefuncs: anOrderedCollection [
	combinefuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> compositeNodeVariables [
	^ #(#argDataTypes #sfuncs #stateDataTypes #stateDataSizes #mstateDataTypes #mstateDataSizes #sortOperators)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames #ffuncs #combinefuncs #serialfuncs #deserialfuncs #initialConditions #msfuncs #minvfuncs #mffuncs #minitialConditions)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> deserialfuncs [
	^ deserialfuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> deserialfuncs: anOrderedCollection [
	deserialfuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> ffuncs [
	^ ffuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> ffuncs: anOrderedCollection [
	ffuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> initialConditions [
	^ initialConditions
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> initialConditions: anOrderedCollection [
	initialConditions := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlCreateAggregateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argDataTypes := OrderedCollection new: 2.
	sfuncs := OrderedCollection new: 2.
	stateDataTypes := OrderedCollection new: 2.
	stateDataSizes := OrderedCollection new: 2.
	ffuncs := OrderedCollection new: 2.
	combinefuncs := OrderedCollection new: 2.
	serialfuncs := OrderedCollection new: 2.
	deserialfuncs := OrderedCollection new: 2.
	initialConditions := OrderedCollection new: 2.
	msfuncs := OrderedCollection new: 2.
	minvfuncs := OrderedCollection new: 2.
	mstateDataTypes := OrderedCollection new: 2.
	mstateDataSizes := OrderedCollection new: 2.
	mffuncs := OrderedCollection new: 2.
	minitialConditions := OrderedCollection new: 2.
	sortOperators := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mffuncs [
	^ mffuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mffuncs: anOrderedCollection [
	mffuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minitialConditions [
	^ minitialConditions
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minitialConditions: anOrderedCollection [
	minitialConditions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minvfuncs [
	^ minvfuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minvfuncs: anOrderedCollection [
	minvfuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> msfuncs [
	^ msfuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> msfuncs: anOrderedCollection [
	msfuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataSizes [
	^ mstateDataSizes
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataSizes: anOrderedCollection [
	self setParents: self mstateDataSizes to: nil.
	mstateDataSizes := anOrderedCollection.
	self setParents: self mstateDataSizes to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataTypes [
	^ mstateDataTypes
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataTypes: anOrderedCollection [
	self setParents: self mstateDataTypes to: nil.
	mstateDataTypes := anOrderedCollection.
	self setParents: self mstateDataTypes to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> serialfuncs [
	^ serialfuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> serialfuncs: anOrderedCollection [
	serialfuncs := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sfuncs [
	^ sfuncs
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sfuncs: anOrderedCollection [
	self setParents: self sfuncs to: nil.
	sfuncs := anOrderedCollection.
	self setParents: self sfuncs to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sortOperators [
	^ sortOperators
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sortOperators: anOrderedCollection [
	self setParents: self sortOperators to: nil.
	sortOperators := anOrderedCollection.
	self setParents: self sortOperators to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataSizes [
	^ stateDataSizes
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataSizes: anOrderedCollection [
	self setParents: self stateDataSizes to: nil.
	stateDataSizes := anOrderedCollection.
	self setParents: self stateDataSizes to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataTypes [
	^ stateDataTypes
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataTypes: anOrderedCollection [
	self setParents: self stateDataTypes to: nil.
	stateDataTypes := anOrderedCollection.
	self setParents: self stateDataTypes to: self
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> tokenVariables [
	^ #(#baseType)
]
