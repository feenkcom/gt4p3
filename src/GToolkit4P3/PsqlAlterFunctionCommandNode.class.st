Class {
	#name : #PsqlAlterFunctionCommandNode,
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
PsqlAlterFunctionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterFunctionCommand: self
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> compositeNodeVariables [
	^ #(#actions #argTypes)
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterFunctionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterFunctionCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName #extensionName)
]
