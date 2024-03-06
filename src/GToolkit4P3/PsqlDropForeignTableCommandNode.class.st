Class {
	#name : #PsqlDropForeignTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropForeignTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropForeignTableCommand: self
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropForeignTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropForeignTableCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
