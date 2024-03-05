Class {
	#name : #PsqlAlterCollationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterCollationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterCollationCommand: self
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterCollationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterCollationCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName)
]
