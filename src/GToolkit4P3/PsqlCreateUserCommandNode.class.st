Class {
	#name : #PsqlCreateUserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'values',
		'passwords',
		'timestamps',
		'roleNames',
		'uids'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateUserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateUserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateUserCommand: self
]

{ #category : #generated }
PsqlCreateUserCommandNode >> compositeNodeVariables [
	^ #(#values #uids)
]

{ #category : #generated }
PsqlCreateUserCommandNode >> compositeTokenVariables [
	^ #(#_s #passwords #timestamps #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlCreateUserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	passwords := OrderedCollection new: 2.
	timestamps := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
	uids := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateUserCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateUserCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateUserCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateUserCommandNode >> passwords [
	^ passwords
]

{ #category : #generated }
PsqlCreateUserCommandNode >> passwords: anOrderedCollection [
	passwords := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlCreateUserCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserCommandNode >> timestamps [
	^ timestamps
]

{ #category : #generated }
PsqlCreateUserCommandNode >> timestamps: anOrderedCollection [
	timestamps := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserCommandNode >> uids [
	^ uids
]

{ #category : #generated }
PsqlCreateUserCommandNode >> uids: anOrderedCollection [
	self setParents: self uids to: nil.
	uids := anOrderedCollection.
	self setParents: self uids to: self
]

{ #category : #generated }
PsqlCreateUserCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateUserCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
