Class {
	#name : #PsqlDropRuleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropRuleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropRuleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropRuleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropRuleCommand: self
]

{ #category : #generated }
PsqlDropRuleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropRuleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropRuleCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropRuleCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropRuleCommandNode >> nodeVariables [
	^ #(#name #tableName)
]

{ #category : #generated }
PsqlDropRuleCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlDropRuleCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]
