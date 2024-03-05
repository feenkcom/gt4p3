Class {
	#name : #PsqlAggregateFilterNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'filterExpression'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAggregateFilterNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAggregateFilterNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAggregateFilterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAggregateFilter: self
]

{ #category : #generated }
PsqlAggregateFilterNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAggregateFilterNode >> filterExpression [
	^ filterExpression
]

{ #category : #generated }
PsqlAggregateFilterNode >> filterExpression: aPsqlExpressionNode [
	self filterExpression notNil ifTrue: [ self filterExpression parent: nil ].
	filterExpression := aPsqlExpressionNode.
	self filterExpression notNil ifTrue: [ self filterExpression parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAggregateFilterNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAggregateFilterNode >> nodeVariables [
	^ #(#filterExpression)
]
