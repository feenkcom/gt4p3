Class {
	#name : #PsqlAlterTextSearchTemplateCommandNode,
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
PsqlAlterTextSearchTemplateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTextSearchTemplateCommand: self
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterTextSearchTemplateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTextSearchTemplateCommandNode >> tokenVariables [
	^ #(#newName #newSchemaName)
]
