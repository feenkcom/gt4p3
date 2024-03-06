Class {
	#name : #PsqlCreatePolicyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName',
		'roleNames',
		'usingExpression',
		'checkExpression'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreatePolicyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreatePolicyCommand: self
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> checkExpression [
	^ checkExpression
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> checkExpression: aPsqlExpressionNode [
	self checkExpression notNil ifTrue: [ self checkExpression parent: nil ].
	checkExpression := aPsqlExpressionNode.
	self checkExpression notNil ifTrue: [ self checkExpression parent: self ]
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> compositeTokenVariables [
	^ #(#_s #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlCreatePolicyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> nodeVariables [
	^ #(#name #tableName #usingExpression #checkExpression)
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> usingExpression [
	^ usingExpression
]

{ #category : #generated }
PsqlCreatePolicyCommandNode >> usingExpression: aPsqlExpressionNode [
	self usingExpression notNil ifTrue: [ self usingExpression parent: nil ].
	usingExpression := aPsqlExpressionNode.
	self usingExpression notNil ifTrue: [ self usingExpression parent: self ]
]
