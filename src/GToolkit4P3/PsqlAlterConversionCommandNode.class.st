Class {
	#name : #PsqlAlterConversionCommandNode,
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
PsqlAlterConversionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterConversionCommand: self
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterConversionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterConversionCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName)
]
