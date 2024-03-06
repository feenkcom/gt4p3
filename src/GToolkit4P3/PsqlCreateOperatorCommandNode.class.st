Class {
	#name : #PsqlCreateOperatorCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'functionName',
		'rightType',
		'comOp',
		'negOp',
		'resProc',
		'joinProc',
		'leftType'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateOperatorCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateOperatorCommand: self
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> comOp [
	^ comOp
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> comOp: aSmaCCToken [
	comOp := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateOperatorCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> joinProc [
	^ joinProc
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> joinProc: aSmaCCToken [
	joinProc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> leftType [
	^ leftType
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> leftType: aSmaCCToken [
	leftType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> negOp [
	^ negOp
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> negOp: aSmaCCToken [
	negOp := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> resProc [
	^ resProc
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> resProc: aSmaCCToken [
	resProc := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> rightType [
	^ rightType
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> rightType: aSmaCCToken [
	rightType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> tokenVariables [
	^ #(#functionName #rightType #comOp #negOp #resProc #joinProc #leftType)
]
