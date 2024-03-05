Class {
	#name : #PsqlAlterProcedureActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'configurationParameter',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterProcedureActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterProcedureAction: self
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterProcedureActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> tokenVariables [
	^ #(#configurationParameter)
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> value [
	^ value
]

{ #category : #generated }
PsqlAlterProcedureActionNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
