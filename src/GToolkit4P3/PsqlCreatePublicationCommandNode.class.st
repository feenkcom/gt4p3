Class {
	#name : #PsqlCreatePublicationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'publicationParameters',
		'values',
		'publicationObjects'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreatePublicationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreatePublicationCommand: self
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> compositeNodeVariables [
	^ #(#values #publicationObjects)
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> compositeTokenVariables [
	^ #(#_s #publicationParameters)
]

{ #category : #'generated-initialize-release' }
PsqlCreatePublicationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	publicationParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	publicationObjects := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> publicationObjects [
	^ publicationObjects
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> publicationObjects: anOrderedCollection [
	self setParents: self publicationObjects to: nil.
	publicationObjects := anOrderedCollection.
	self setParents: self publicationObjects to: self
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> publicationParameters [
	^ publicationParameters
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> publicationParameters: anOrderedCollection [
	publicationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreatePublicationCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
