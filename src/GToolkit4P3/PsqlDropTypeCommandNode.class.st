Class {
	#name : #PsqlDropTypeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTypeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTypeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTypeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTypeCommand: self
]

{ #category : #generated }
PsqlDropTypeCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropTypeCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTypeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTypeCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropTypeCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
