Class {
	#name : #PsqlAlterSequenceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'sequenceName',
		'increment',
		'minValue',
		'maxValue',
		'start',
		'restart',
		'cache',
		'ownedBy',
		'dataType',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterSequenceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterSequenceCommand: self
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> cache [
	^ cache
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> cache: aPsqlExpressionNode [
	self cache notNil ifTrue: [ self cache parent: nil ].
	cache := aPsqlExpressionNode.
	self cache notNil ifTrue: [ self cache parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> increment [
	^ increment
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> increment: aPsqlExpressionNode [
	self increment notNil ifTrue: [ self increment parent: nil ].
	increment := aPsqlExpressionNode.
	self increment notNil ifTrue: [ self increment parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterSequenceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> maxValue [
	^ maxValue
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> maxValue: aPsqlExpressionNode [
	self maxValue notNil ifTrue: [ self maxValue parent: nil ].
	maxValue := aPsqlExpressionNode.
	self maxValue notNil ifTrue: [ self maxValue parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> minValue [
	^ minValue
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> minValue: aPsqlExpressionNode [
	self minValue notNil ifTrue: [ self minValue parent: nil ].
	minValue := aPsqlExpressionNode.
	self minValue notNil ifTrue: [ self minValue parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> newName: aPsqlQualifiedNameNode [
	self newName notNil ifTrue: [ self newName parent: nil ].
	newName := aPsqlQualifiedNameNode.
	self newName notNil ifTrue: [ self newName parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> nodeVariables [
	^ #(#sequenceName #increment #minValue #maxValue #start #restart #cache #ownedBy #dataType #newName)
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> ownedBy [
	^ ownedBy
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> ownedBy: aPsqlQualifiedNameNode [
	self ownedBy notNil ifTrue: [ self ownedBy parent: nil ].
	ownedBy := aPsqlQualifiedNameNode.
	self ownedBy notNil ifTrue: [ self ownedBy parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> restart [
	^ restart
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> restart: aPsqlExpressionNode [
	self restart notNil ifTrue: [ self restart parent: nil ].
	restart := aPsqlExpressionNode.
	self restart notNil ifTrue: [ self restart parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> sequenceName [
	^ sequenceName
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> sequenceName: aPsqlQualifiedNameNode [
	self sequenceName notNil ifTrue: [ self sequenceName parent: nil ].
	sequenceName := aPsqlQualifiedNameNode.
	self sequenceName notNil ifTrue: [ self sequenceName parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> start [
	^ start
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> start: aPsqlExpressionNode [
	self start notNil ifTrue: [ self start parent: nil ].
	start := aPsqlExpressionNode.
	self start notNil ifTrue: [ self start parent: self ]
]

{ #category : #generated }
PsqlAlterSequenceCommandNode >> tokenVariables [
	^ #(#newOwner)
]
