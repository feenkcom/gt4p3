Class {
	#name : #PsqlAlterTextSearchDictionaryCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'options',
		'values',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTextSearchDictionaryCommand: self
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> compositeTokenVariables [
	^ #(#_s #options)
]

{ #category : #'generated-initialize-release' }
PsqlAlterTextSearchDictionaryCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName)
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterTextSearchDictionaryCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
