Class {
	#name : #PsqlCreateGroupCommandNode,
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
PsqlCreateGroupCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateGroupCommand: self
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> compositeNodeVariables [
	^ #(#values #uids)
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> compositeTokenVariables [
	^ #(#_s #passwords #timestamps #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlCreateGroupCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	passwords := OrderedCollection new: 2.
	timestamps := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
	uids := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> passwords [
	^ passwords
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> passwords: anOrderedCollection [
	passwords := anOrderedCollection
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> timestamps [
	^ timestamps
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> timestamps: anOrderedCollection [
	timestamps := anOrderedCollection
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> uids [
	^ uids
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> uids: anOrderedCollection [
	self setParents: self uids to: nil.
	uids := anOrderedCollection.
	self setParents: self uids to: self
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateGroupCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
