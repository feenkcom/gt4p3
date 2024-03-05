Class {
	#name : #PsqlDropUserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropUserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropUserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropUserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropUserCommand: self
]

{ #category : #generated }
PsqlDropUserCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropUserCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropUserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropUserCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropUserCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
