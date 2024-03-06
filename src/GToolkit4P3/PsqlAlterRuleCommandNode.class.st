Class {
	#name : #PsqlAlterRuleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterRuleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterRuleCommand: self
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterRuleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> nodeVariables [
	^ #(#name #tableName)
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlAlterRuleCommandNode >> tokenVariables [
	^ #(#newName)
]
