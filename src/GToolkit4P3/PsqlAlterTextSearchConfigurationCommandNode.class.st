Class {
	#name : #PsqlAlterTextSearchConfigurationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'tokenTypes',
		'dictionaryNames',
		'oldDictionary',
		'newDictionary',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTextSearchConfigurationCommand: self
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> compositeTokenVariables [
	^ #(#_s #tokenTypes #dictionaryNames)
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> dictionaryNames [
	^ dictionaryNames
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> dictionaryNames: anOrderedCollection [
	dictionaryNames := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlAlterTextSearchConfigurationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tokenTypes := OrderedCollection new: 2.
	dictionaryNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newDictionary [
	^ newDictionary
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newDictionary: aSmaCCToken [
	newDictionary := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> oldDictionary [
	^ oldDictionary
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> oldDictionary: aSmaCCToken [
	oldDictionary := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> tokenTypes [
	^ tokenTypes
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> tokenTypes: anOrderedCollection [
	tokenTypes := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchConfigurationCommandNode >> tokenVariables [
	^ #(#oldDictionary #newDictionary #newName #newOwner #newSchemaName)
]
