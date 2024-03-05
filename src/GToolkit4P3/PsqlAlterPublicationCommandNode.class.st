Class {
	#name : #PsqlAlterPublicationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'publicationObjects',
		'publicationParameters',
		'values',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterPublicationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterPublicationCommand: self
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> compositeNodeVariables [
	^ #(#publicationObjects #values)
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> compositeTokenVariables [
	^ #(#_s #publicationParameters)
]

{ #category : #'generated-initialize-release' }
PsqlAlterPublicationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	publicationObjects := OrderedCollection new: 2.
	publicationParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> publicationObjects [
	^ publicationObjects
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> publicationObjects: anOrderedCollection [
	self setParents: self publicationObjects to: nil.
	publicationObjects := anOrderedCollection.
	self setParents: self publicationObjects to: self
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> publicationParameters [
	^ publicationParameters
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> publicationParameters: anOrderedCollection [
	publicationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> tokenVariables [
	^ #(#newOwner #newName)
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterPublicationCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
