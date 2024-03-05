Class {
	#name : #PsqlDropExtensionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropExtensionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropExtensionCommand: self
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropExtensionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropExtensionCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
