Class {
	#name : #PsqlCreateAggregateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'argNames',
		'argDataTypes',
		'sfunc',
		'stateDataType',
		'stateDataSize',
		'ffunc',
		'combinefunc',
		'serialfunc',
		'deserialfunc',
		'initialCondition',
		'msfunc',
		'minvfunc',
		'mstateDataType',
		'mstateDataSize',
		'mffunc',
		'minitialCondition',
		'sortOperator',
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
PsqlCreateAggregateCommandNode >> combinefunc [
	^ combinefunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> combinefunc: aSmaCCToken [
	combinefunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> compositeNodeVariables [
	^ #(#argDataTypes)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> deserialfunc [
	^ deserialfunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> deserialfunc: aSmaCCToken [
	deserialfunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> ffunc [
	^ ffunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> ffunc: aSmaCCToken [
	ffunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> initialCondition [
	^ initialCondition
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> initialCondition: aSmaCCToken [
	initialCondition := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateAggregateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argDataTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mffunc [
	^ mffunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mffunc: aSmaCCToken [
	mffunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minitialCondition [
	^ minitialCondition
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minitialCondition: aSmaCCToken [
	minitialCondition := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minvfunc [
	^ minvfunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> minvfunc: aSmaCCToken [
	minvfunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> msfunc [
	^ msfunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> msfunc: aSmaCCToken [
	msfunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataSize [
	^ mstateDataSize
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataSize: aPsqlNumberNode [
	self mstateDataSize notNil ifTrue: [ self mstateDataSize parent: nil ].
	mstateDataSize := aPsqlNumberNode.
	self mstateDataSize notNil ifTrue: [ self mstateDataSize parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataType [
	^ mstateDataType
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> mstateDataType: aPsqlProgramNode [
	self mstateDataType notNil ifTrue: [ self mstateDataType parent: nil ].
	mstateDataType := aPsqlProgramNode.
	self mstateDataType notNil ifTrue: [ self mstateDataType parent: self ]
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
	^ #(#name #sfunc #stateDataType #stateDataSize #mstateDataType #mstateDataSize #sortOperator)
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> serialfunc [
	^ serialfunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> serialfunc: aSmaCCToken [
	serialfunc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sfunc [
	^ sfunc
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sfunc: aPsqlQualifiedNameNode [
	self sfunc notNil ifTrue: [ self sfunc parent: nil ].
	sfunc := aPsqlQualifiedNameNode.
	self sfunc notNil ifTrue: [ self sfunc parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sortOperator [
	^ sortOperator
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> sortOperator: aPsqlQualifiedNameNode [
	self sortOperator notNil ifTrue: [ self sortOperator parent: nil ].
	sortOperator := aPsqlQualifiedNameNode.
	self sortOperator notNil ifTrue: [ self sortOperator parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataSize [
	^ stateDataSize
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataSize: aPsqlNumberNode [
	self stateDataSize notNil ifTrue: [ self stateDataSize parent: nil ].
	stateDataSize := aPsqlNumberNode.
	self stateDataSize notNil ifTrue: [ self stateDataSize parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataType [
	^ stateDataType
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> stateDataType: aPsqlProgramNode [
	self stateDataType notNil ifTrue: [ self stateDataType parent: nil ].
	stateDataType := aPsqlProgramNode.
	self stateDataType notNil ifTrue: [ self stateDataType parent: self ]
]

{ #category : #generated }
PsqlCreateAggregateCommandNode >> tokenVariables [
	^ #(#ffunc #combinefunc #serialfunc #deserialfunc #initialCondition #msfunc #minvfunc #mffunc #minitialCondition #baseType)
]
