Class {
	#name : #PsqlVaryingTypeExpressionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'length'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVaryingTypeExpression: self
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlVaryingTypeExpressionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> length [
	^ length
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> length: aPsqlNumberNode [
	self length notNil ifTrue: [ self length parent: nil ].
	length := aPsqlNumberNode.
	self length notNil ifTrue: [ self length parent: self ]
]

{ #category : #generated }
PsqlVaryingTypeExpressionNode >> nodeVariables [
	^ #(#length)
]
