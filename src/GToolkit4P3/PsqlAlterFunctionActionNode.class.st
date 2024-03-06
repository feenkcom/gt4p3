Class {
	#name : #PsqlAlterFunctionActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'executionCost',
		'resultRows',
		'supportFunction',
		'configurationParameter',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterFunctionActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterFunctionAction: self
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> executionCost [
	^ executionCost
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> executionCost: aPsqlExpressionNode [
	self executionCost notNil ifTrue: [ self executionCost parent: nil ].
	executionCost := aPsqlExpressionNode.
	self executionCost notNil ifTrue: [ self executionCost parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterFunctionActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> nodeVariables [
	^ #(#executionCost #resultRows #supportFunction #value)
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> resultRows [
	^ resultRows
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> resultRows: aPsqlExpressionNode [
	self resultRows notNil ifTrue: [ self resultRows parent: nil ].
	resultRows := aPsqlExpressionNode.
	self resultRows notNil ifTrue: [ self resultRows parent: self ]
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> supportFunction [
	^ supportFunction
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> supportFunction: aPsqlExpressionNode [
	self supportFunction notNil ifTrue: [ self supportFunction parent: nil ].
	supportFunction := aPsqlExpressionNode.
	self supportFunction notNil ifTrue: [ self supportFunction parent: self ]
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> tokenVariables [
	^ #(#configurationParameter)
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> value [
	^ value
]

{ #category : #generated }
PsqlAlterFunctionActionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
