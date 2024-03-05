Class {
	#name : #PsqlCaseExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'conditions',
		'values',
		'elseValue'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCaseExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseExpression: self
]

{ #category : #generated }
PsqlCaseExpressionNode >> compositeNodeVariables [
	^ #(#conditions #values)
]

{ #category : #generated }
PsqlCaseExpressionNode >> conditions [
	^ conditions
]

{ #category : #generated }
PsqlCaseExpressionNode >> conditions: anOrderedCollection [
	self setParents: self conditions to: nil.
	conditions := anOrderedCollection.
	self setParents: self conditions to: self
]

{ #category : #generated }
PsqlCaseExpressionNode >> elseValue [
	^ elseValue
]

{ #category : #generated }
PsqlCaseExpressionNode >> elseValue: aPsqlExpressionNode [
	self elseValue notNil ifTrue: [ self elseValue parent: nil ].
	elseValue := aPsqlExpressionNode.
	self elseValue notNil ifTrue: [ self elseValue parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCaseExpressionNode >> initialize [
	super initialize.
	conditions := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCaseExpressionNode >> nodeVariables [
	^ #(#elseValue)
]

{ #category : #generated }
PsqlCaseExpressionNode >> values [
	^ values
]

{ #category : #generated }
PsqlCaseExpressionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
