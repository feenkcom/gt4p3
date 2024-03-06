Class {
	#name : #PsqlAlterAggregateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'aggregateSignature',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterAggregateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterAggregateCommand: self
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> aggregateSignature [
	^ aggregateSignature
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> aggregateSignature: aPsqlAggregateSignatureNode [
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: nil ].
	aggregateSignature := aPsqlAggregateSignatureNode.
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: self ]
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterAggregateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> nodeVariables [
	^ #(#name #aggregateSignature)
]

{ #category : #generated }
PsqlAlterAggregateCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName)
]
