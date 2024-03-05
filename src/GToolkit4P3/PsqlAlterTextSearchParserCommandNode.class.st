Class {
	#name : #PsqlAlterTextSearchParserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newName',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTextSearchParserCommand: self
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterTextSearchParserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTextSearchParserCommandNode >> tokenVariables [
	^ #(#newName #newSchemaName)
]
