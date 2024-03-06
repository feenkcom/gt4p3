Class {
	#name : #PsqlAlterSubscriptionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'stringToken',
		'publicationNames',
		'publicationOptions',
		'values',
		'refreshOptions',
		'subscriptionParameters',
		'skipOption',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterSubscriptionCommand: self
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> compositeTokenVariables [
	^ #(#_s #publicationNames #publicationOptions #refreshOptions #subscriptionParameters)
]

{ #category : #'generated-initialize-release' }
PsqlAlterSubscriptionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	publicationNames := OrderedCollection new: 2.
	publicationOptions := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	refreshOptions := OrderedCollection new: 2.
	subscriptionParameters := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> publicationNames [
	^ publicationNames
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> publicationNames: anOrderedCollection [
	publicationNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> publicationOptions [
	^ publicationOptions
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> publicationOptions: anOrderedCollection [
	publicationOptions := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> refreshOptions [
	^ refreshOptions
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> refreshOptions: anOrderedCollection [
	refreshOptions := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> skipOption [
	^ skipOption
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> skipOption: aSmaCCToken [
	skipOption := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> stringToken [
	^ stringToken
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> stringToken: aSmaCCToken [
	stringToken := aSmaCCToken
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> subscriptionParameters [
	^ subscriptionParameters
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> subscriptionParameters: anOrderedCollection [
	subscriptionParameters := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> tokenVariables [
	^ #(#stringToken #skipOption #newOwner #newName)
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterSubscriptionCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
