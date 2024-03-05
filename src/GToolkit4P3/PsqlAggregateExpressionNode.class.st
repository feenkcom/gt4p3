Class {
	#name : #PsqlAggregateExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'aggregate',
		'args',
		'orderBy',
		'filter',
		'withinGroup'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAggregateExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAggregateExpression: self
]

{ #category : #generated }
PsqlAggregateExpressionNode >> aggregate [
	^ aggregate
]

{ #category : #generated }
PsqlAggregateExpressionNode >> aggregate: aPsqlExpressionNode [
	self aggregate notNil ifTrue: [ self aggregate parent: nil ].
	aggregate := aPsqlExpressionNode.
	self aggregate notNil ifTrue: [ self aggregate parent: self ]
]

{ #category : #generated }
PsqlAggregateExpressionNode >> args [
	^ args
]

{ #category : #generated }
PsqlAggregateExpressionNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlAggregateExpressionNode >> compositeNodeVariables [
	^ #(#args)
]

{ #category : #generated }
PsqlAggregateExpressionNode >> filter [
	^ filter
]

{ #category : #generated }
PsqlAggregateExpressionNode >> filter: aPsqlAggregateFilterNode [
	self filter notNil ifTrue: [ self filter parent: nil ].
	filter := aPsqlAggregateFilterNode.
	self filter notNil ifTrue: [ self filter parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAggregateExpressionNode >> initialize [
	super initialize.
	args := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAggregateExpressionNode >> nodeVariables [
	^ #(#aggregate #orderBy #filter #withinGroup)
]

{ #category : #generated }
PsqlAggregateExpressionNode >> orderBy [
	^ orderBy
]

{ #category : #generated }
PsqlAggregateExpressionNode >> orderBy: aPsqlOrderByClauseNode [
	self orderBy notNil ifTrue: [ self orderBy parent: nil ].
	orderBy := aPsqlOrderByClauseNode.
	self orderBy notNil ifTrue: [ self orderBy parent: self ]
]

{ #category : #generated }
PsqlAggregateExpressionNode >> withinGroup [
	^ withinGroup
]

{ #category : #generated }
PsqlAggregateExpressionNode >> withinGroup: aPsqlWithinGroupNode [
	self withinGroup notNil ifTrue: [ self withinGroup parent: nil ].
	withinGroup := aPsqlWithinGroupNode.
	self withinGroup notNil ifTrue: [ self withinGroup parent: self ]
]
