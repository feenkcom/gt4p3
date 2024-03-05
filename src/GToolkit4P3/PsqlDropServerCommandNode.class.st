Class {
	#name : #PsqlDropServerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropServerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropServerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropServerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropServerCommand: self
]

{ #category : #generated }
PsqlDropServerCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropServerCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropServerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropServerCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropServerCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
