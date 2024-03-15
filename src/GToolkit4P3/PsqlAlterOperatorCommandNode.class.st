Class {
	#name : #PsqlAlterOperatorCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'operatorName',
		'leftType',
		'rightType',
		'newOwner',
		'newSchemaName',
		'resProcs',
		'joinProcs'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterOperatorCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterOperatorCommand: self
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> compositeTokenVariables [
	^ #(#_s #resProcs #joinProcs)
]

{ #category : #'generated-initialize-release' }
PsqlAlterOperatorCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	resProcs := OrderedCollection new: 2.
	joinProcs := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> joinProcs [
	^ joinProcs
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> joinProcs: anOrderedCollection [
	joinProcs := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> leftType [
	^ leftType
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> leftType: aSmaCCToken [
	leftType := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> operatorName [
	^ operatorName
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> resProcs [
	^ resProcs
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> resProcs: anOrderedCollection [
	resProcs := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> rightType [
	^ rightType
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> rightType: aSmaCCToken [
	rightType := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> tokenVariables [
	^ #(#operatorName #leftType #rightType #newOwner #newSchemaName)
]
