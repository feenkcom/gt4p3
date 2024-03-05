Class {
	#name : #PsqlDropTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTriggerCommand: self
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> nodeVariables [
	^ #(#name #tableName)
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlDropTriggerCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]
