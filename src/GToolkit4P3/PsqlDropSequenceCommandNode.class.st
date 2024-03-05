Class {
	#name : #PsqlDropSequenceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropSequenceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropSequenceCommand: self
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropSequenceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropSequenceCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
