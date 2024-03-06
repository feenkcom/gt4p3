Class {
	#name : #PsqlDropForeignDataWrapperCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropForeignDataWrapperCommand: self
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropForeignDataWrapperCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropForeignDataWrapperCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
