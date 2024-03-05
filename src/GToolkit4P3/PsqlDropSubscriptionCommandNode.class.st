Class {
	#name : #PsqlDropSubscriptionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropSubscriptionCommand: self
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropSubscriptionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropSubscriptionCommandNode >> nodeVariables [
	^ #(#name)
]
