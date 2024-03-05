Class {
	#name : #PsqlDropViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropViewCommand: self
]

{ #category : #generated }
PsqlDropViewCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropViewCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropViewCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropViewCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
