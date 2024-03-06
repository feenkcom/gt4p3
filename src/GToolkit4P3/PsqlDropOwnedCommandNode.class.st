Class {
	#name : #PsqlDropOwnedCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropOwnedCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropOwnedCommand: self
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropOwnedCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropOwnedCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
