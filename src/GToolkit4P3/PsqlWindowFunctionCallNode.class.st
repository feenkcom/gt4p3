Class {
	#name : #PsqlWindowFunctionCallNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'aggregate',
		'windowName',
		'filter',
		'args'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlWindowFunctionCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWindowFunctionCall: self
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> aggregate [
	^ aggregate
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> aggregate: aPsqlExpressionNode [
	self aggregate notNil ifTrue: [ self aggregate parent: nil ].
	aggregate := aPsqlExpressionNode.
	self aggregate notNil ifTrue: [ self aggregate parent: self ]
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> args [
	^ args
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> filter [
	^ filter
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> filter: aPsqlAggregateFilterNode [
	self filter notNil ifTrue: [ self filter parent: nil ].
	filter := aPsqlAggregateFilterNode.
	self filter notNil ifTrue: [ self filter parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlWindowFunctionCallNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> nodeVariables [
	^ #(#aggregate #windowName #filter)
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> windowName [
	^ windowName
]

{ #category : #generated }
PsqlWindowFunctionCallNode >> windowName: aPsqlExpressionNode [
	self windowName notNil ifTrue: [ self windowName parent: nil ].
	windowName := aPsqlExpressionNode.
	self windowName notNil ifTrue: [ self windowName parent: self ]
]
