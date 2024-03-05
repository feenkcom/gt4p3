Class {
	#name : #PsqlCreateSubscriptionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'subscriptionName',
		'conninfo',
		'publicationNames',
		'subscriptionParameters',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateSubscriptionCommand: self
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> compositeTokenVariables [
	^ #(#_s #publicationNames #subscriptionParameters)
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> conninfo [
	^ conninfo
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> conninfo: aSmaCCToken [
	conninfo := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateSubscriptionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	publicationNames := OrderedCollection new: 2.
	subscriptionParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> publicationNames [
	^ publicationNames
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> publicationNames: anOrderedCollection [
	publicationNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> subscriptionName [
	^ subscriptionName
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> subscriptionName: aSmaCCToken [
	subscriptionName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> subscriptionParameters [
	^ subscriptionParameters
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> subscriptionParameters: anOrderedCollection [
	subscriptionParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> tokenVariables [
	^ #(#subscriptionName #conninfo)
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateSubscriptionCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
