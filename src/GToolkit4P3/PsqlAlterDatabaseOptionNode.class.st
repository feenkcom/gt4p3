Class {
	#name : #PsqlAlterDatabaseOptionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterDatabaseOption: self
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterDatabaseOptionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> value [
	^ value
]

{ #category : #generated }
PsqlAlterDatabaseOptionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
