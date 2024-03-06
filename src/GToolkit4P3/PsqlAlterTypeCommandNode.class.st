Class {
	#name : #PsqlAlterTypeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newOwner',
		'newName',
		'newSchemaName',
		'attributeName',
		'newAttributeName',
		'actions',
		'newEnumValue',
		'neighborEnumValue',
		'existingEnumValue',
		'properties',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTypeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTypeCommand: self
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> attributeName [
	^ attributeName
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> attributeName: aSmaCCToken [
	attributeName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> compositeNodeVariables [
	^ #(#actions #values)
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> compositeTokenVariables [
	^ #(#_s #properties)
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> existingEnumValue [
	^ existingEnumValue
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> existingEnumValue: aSmaCCToken [
	existingEnumValue := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterTypeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
	properties := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> neighborEnumValue [
	^ neighborEnumValue
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> neighborEnumValue: aSmaCCToken [
	neighborEnumValue := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newAttributeName [
	^ newAttributeName
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newAttributeName: aSmaCCToken [
	newAttributeName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newEnumValue [
	^ newEnumValue
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newEnumValue: aSmaCCToken [
	newEnumValue := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> properties [
	^ properties
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> properties: anOrderedCollection [
	properties := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> tokenVariables [
	^ #(#newOwner #newName #newSchemaName #attributeName #newAttributeName #newEnumValue #neighborEnumValue #existingEnumValue)
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterTypeCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
