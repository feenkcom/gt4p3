Class {
	#name : #PsqlExcludeElementNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'columnName',
		'_s',
		'opclass',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlExcludeElementNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlExcludeElementNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlExcludeElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExcludeElement: self
]

{ #category : #generated }
PsqlExcludeElementNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlExcludeElementNode >> columnName: aPsqlExpressionNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlExpressionNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlExcludeElementNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlExcludeElementNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlExcludeElementNode >> nodeVariables [
	^ #(#columnName #value)
]

{ #category : #generated }
PsqlExcludeElementNode >> opclass [
	^ opclass
]

{ #category : #generated }
PsqlExcludeElementNode >> opclass: aSmaCCToken [
	opclass := aSmaCCToken
]

{ #category : #generated }
PsqlExcludeElementNode >> tokenVariables [
	^ #(#opclass)
]

{ #category : #generated }
PsqlExcludeElementNode >> value [
	^ value
]

{ #category : #generated }
PsqlExcludeElementNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
