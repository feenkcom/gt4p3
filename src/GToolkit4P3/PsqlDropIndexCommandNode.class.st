Class {
	#name : #PsqlDropIndexCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'indexNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropIndexCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropIndexCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropIndexCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropIndexCommand: self
]

{ #category : #generated }
PsqlDropIndexCommandNode >> compositeNodeVariables [
	^ #(#indexNames)
]

{ #category : #generated }
PsqlDropIndexCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlDropIndexCommandNode >> indexNames [
	^ indexNames
]

{ #category : #generated }
PsqlDropIndexCommandNode >> indexNames: anOrderedCollection [
	self setParents: self indexNames to: nil.
	indexNames := anOrderedCollection.
	self setParents: self indexNames to: self
]

{ #category : #'generated-initialize-release' }
PsqlDropIndexCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	indexNames := OrderedCollection new: 2.
]
