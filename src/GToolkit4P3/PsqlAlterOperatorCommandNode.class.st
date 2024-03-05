Class {
	#name : #PsqlAlterOperatorCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'leftType',
		'rightType',
		'newOwner',
		'newSchemaName',
		'resProc',
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
	^ #(#_s #joinProcs)
]

{ #category : #'generated-initialize-release' }
PsqlAlterOperatorCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
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
PsqlAlterOperatorCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
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
PsqlAlterOperatorCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> resProc [
	^ resProc
]

{ #category : #generated }
PsqlAlterOperatorCommandNode >> resProc: aSmaCCToken [
	resProc := aSmaCCToken
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
	^ #(#leftType #rightType #newOwner #newSchemaName #resProc)
]
