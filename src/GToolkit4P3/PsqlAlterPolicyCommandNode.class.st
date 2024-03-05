Class {
	#name : #PsqlAlterPolicyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName',
		'newName',
		'usingExpression',
		'checkExpression',
		'roleNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterPolicyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterPolicyCommand: self
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> checkExpression [
	^ checkExpression
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> checkExpression: aPsqlExpressionNode [
	self checkExpression notNil ifTrue: [ self checkExpression parent: nil ].
	checkExpression := aPsqlExpressionNode.
	self checkExpression notNil ifTrue: [ self checkExpression parent: self ]
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> compositeTokenVariables [
	^ #(#_s #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlAlterPolicyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> nodeVariables [
	^ #(#name #tableName #usingExpression #checkExpression)
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> tokenVariables [
	^ #(#newName)
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> usingExpression [
	^ usingExpression
]

{ #category : #generated }
PsqlAlterPolicyCommandNode >> usingExpression: aPsqlExpressionNode [
	self usingExpression notNil ifTrue: [ self usingExpression parent: nil ].
	usingExpression := aPsqlExpressionNode.
	self usingExpression notNil ifTrue: [ self usingExpression parent: self ]
]
