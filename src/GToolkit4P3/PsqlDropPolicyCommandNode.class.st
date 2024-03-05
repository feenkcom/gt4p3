Class {
	#name : #PsqlDropPolicyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropPolicyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropPolicyCommand: self
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropPolicyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> nodeVariables [
	^ #(#name #tableName)
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlDropPolicyCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]
