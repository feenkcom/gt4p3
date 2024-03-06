Class {
	#name : #PsqlAlterProcedureCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'actions',
		'argNames',
		'argTypes',
		'newName',
		'newOwner',
		'newSchemaName',
		'extensionName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterProcedureCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterProcedureCommand: self
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> compositeNodeVariables [
	^ #(#actions #argTypes)
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterProcedureCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterProcedureCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName #extensionName)
]
