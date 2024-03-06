Class {
	#name : #PsqlAlterTypeActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'attributeName',
		'dataType',
		'collation'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTypeActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTypeActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTypeActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTypeAction: self
]

{ #category : #generated }
PsqlAlterTypeActionNode >> attributeName [
	^ attributeName
]

{ #category : #generated }
PsqlAlterTypeActionNode >> attributeName: aSmaCCToken [
	attributeName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeActionNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlAlterTypeActionNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlAlterTypeActionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterTypeActionNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlAlterTypeActionNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterTypeActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTypeActionNode >> nodeVariables [
	^ #(#dataType #collation)
]

{ #category : #generated }
PsqlAlterTypeActionNode >> tokenVariables [
	^ #(#attributeName)
]
