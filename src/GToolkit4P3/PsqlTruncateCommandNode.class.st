Class {
	#name : #PsqlTruncateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTruncateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlTruncateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlTruncateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTruncateCommand: self
]

{ #category : #generated }
PsqlTruncateCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlTruncateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlTruncateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlTruncateCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlTruncateCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
