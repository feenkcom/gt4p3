Class {
	#name : #PsqlAlterTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tableName',
		'newName',
		'extensionName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTriggerCommand: self
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> nodeVariables [
	^ #(#name #tableName)
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlAlterTriggerCommandNode >> tokenVariables [
	^ #(#newName #extensionName)
]
