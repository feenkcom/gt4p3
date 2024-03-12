Class {
	#name : #PsqlTimeTypeExpressionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'length'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTimeTypeExpressionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTimeTypeExpression: self
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlTimeTypeExpressionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> length [
	^ length
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> length: aPsqlNumberNode [
	self length notNil ifTrue: [ self length parent: nil ].
	length := aPsqlNumberNode.
	self length notNil ifTrue: [ self length parent: self ]
]

{ #category : #generated }
PsqlTimeTypeExpressionNode >> nodeVariables [
	^ #(#length)
]
