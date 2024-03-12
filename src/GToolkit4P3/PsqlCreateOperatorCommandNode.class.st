Class {
	#name : #PsqlCreateOperatorCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'operatorName',
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
PsqlCreateOperatorCommandNode >> functionName: aPsqlQualifiedNameNode [
	self functionName notNil ifTrue: [ self functionName parent: nil ].
	functionName := aPsqlQualifiedNameNode.
	self functionName notNil ifTrue: [ self functionName parent: self ]
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
PsqlCreateOperatorCommandNode >> negOp [
	^ negOp
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> negOp: aSmaCCToken [
	negOp := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> nodeVariables [
	^ #(#functionName)
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> operatorName [
	^ operatorName
]

{ #category : #generated }
PsqlCreateOperatorCommandNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
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
	^ #(#operatorName #rightType #comOp #negOp #resProc #joinProc #leftType)
]
