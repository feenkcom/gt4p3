Class {
	#name : #PsqlCreateSequenceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'sequenceName',
		'dataType',
		'increment',
		'minValue',
		'maxValue',
		'startWith',
		'cache',
		'ownedBy'
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
PsqlCreateSequenceCommandNode >> cache [
	^ cache
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> cache: aPsqlExpressionNode [
	self cache notNil ifTrue: [ self cache parent: nil ].
	cache := aPsqlExpressionNode.
	self cache notNil ifTrue: [ self cache parent: self ]
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> increment [
	^ increment
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> increment: aPsqlExpressionNode [
	self increment notNil ifTrue: [ self increment parent: nil ].
	increment := aPsqlExpressionNode.
	self increment notNil ifTrue: [ self increment parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCreateSequenceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> maxValue [
	^ maxValue
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> maxValue: aPsqlExpressionNode [
	self maxValue notNil ifTrue: [ self maxValue parent: nil ].
	maxValue := aPsqlExpressionNode.
	self maxValue notNil ifTrue: [ self maxValue parent: self ]
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> minValue [
	^ minValue
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> minValue: aPsqlExpressionNode [
	self minValue notNil ifTrue: [ self minValue parent: nil ].
	minValue := aPsqlExpressionNode.
	self minValue notNil ifTrue: [ self minValue parent: self ]
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> nodeVariables [
	^ #(#sequenceName #dataType #increment #minValue #maxValue #startWith #cache #ownedBy)
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> ownedBy [
	^ ownedBy
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> ownedBy: aPsqlQualifiedNameNode [
	self ownedBy notNil ifTrue: [ self ownedBy parent: nil ].
	ownedBy := aPsqlQualifiedNameNode.
	self ownedBy notNil ifTrue: [ self ownedBy parent: self ]
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
PsqlCreateSequenceCommandNode >> startWith [
	^ startWith
]

{ #category : #generated }
PsqlCreateSequenceCommandNode >> startWith: aPsqlExpressionNode [
	self startWith notNil ifTrue: [ self startWith parent: nil ].
	startWith := aPsqlExpressionNode.
	self startWith notNil ifTrue: [ self startWith parent: self ]
]
