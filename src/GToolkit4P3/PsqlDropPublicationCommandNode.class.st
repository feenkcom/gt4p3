Class {
	#name : #PsqlDropPublicationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropPublicationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropPublicationCommand: self
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropPublicationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropPublicationCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
