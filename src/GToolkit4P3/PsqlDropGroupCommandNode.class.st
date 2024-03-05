Class {
	#name : #PsqlDropGroupCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropGroupCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropGroupCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropGroupCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropGroupCommand: self
]

{ #category : #generated }
PsqlDropGroupCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropGroupCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropGroupCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropGroupCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropGroupCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
