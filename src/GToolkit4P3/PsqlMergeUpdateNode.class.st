Class {
	#name : #PsqlMergeUpdateNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMergeUpdateNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlMergeUpdateNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlMergeUpdateNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeUpdate: self
]

{ #category : #generated }
PsqlMergeUpdateNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlMergeUpdateNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlMergeUpdateNode >> compositeNodeVariables [
	^ #(#columnNames #values)
]

{ #category : #generated }
PsqlMergeUpdateNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlMergeUpdateNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlMergeUpdateNode >> values [
	^ values
]

{ #category : #generated }
PsqlMergeUpdateNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
