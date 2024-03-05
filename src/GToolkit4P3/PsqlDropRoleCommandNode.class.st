Class {
	#name : #PsqlDropRoleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropRoleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropRoleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropRoleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropRoleCommand: self
]

{ #category : #generated }
PsqlDropRoleCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropRoleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropRoleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropRoleCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropRoleCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
