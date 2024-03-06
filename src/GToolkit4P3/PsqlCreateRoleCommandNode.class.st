Class {
	#name : #PsqlCreateRoleCommandNode,
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
PsqlCreateRoleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateRoleCommand: self
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> compositeNodeVariables [
	^ #(#values #uids)
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> compositeTokenVariables [
	^ #(#_s #passwords #timestamps #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlCreateRoleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	passwords := OrderedCollection new: 2.
	timestamps := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
	uids := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> passwords [
	^ passwords
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> passwords: anOrderedCollection [
	passwords := anOrderedCollection
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> timestamps [
	^ timestamps
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> timestamps: anOrderedCollection [
	timestamps := anOrderedCollection
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> uids [
	^ uids
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> uids: anOrderedCollection [
	self setParents: self uids to: nil.
	uids := anOrderedCollection.
	self setParents: self uids to: self
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateRoleCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
