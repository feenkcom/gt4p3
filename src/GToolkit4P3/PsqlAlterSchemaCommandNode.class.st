Class {
	#name : #PsqlAlterSchemaCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'schema',
		'newName',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterSchemaCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterSchemaCommand: self
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterSchemaCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> newName: aPsqlQualifiedNameNode [
	self newName notNil ifTrue: [ self newName parent: nil ].
	newName := aPsqlQualifiedNameNode.
	self newName notNil ifTrue: [ self newName parent: self ]
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> nodeVariables [
	^ #(#schema #newName)
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> schema [
	^ schema
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> schema: aPsqlQualifiedNameNode [
	self schema notNil ifTrue: [ self schema parent: nil ].
	schema := aPsqlQualifiedNameNode.
	self schema notNil ifTrue: [ self schema parent: self ]
]

{ #category : #generated }
PsqlAlterSchemaCommandNode >> tokenVariables [
	^ #(#newOwner)
]
