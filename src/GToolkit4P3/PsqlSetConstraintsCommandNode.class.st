Class {
	#name : #PsqlSetConstraintsCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSetConstraintsCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetConstraintsCommand: self
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlSetConstraintsCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlSetConstraintsCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
