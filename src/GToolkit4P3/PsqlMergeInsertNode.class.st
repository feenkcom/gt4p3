Class {
	#name : #PsqlMergeInsertNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMergeInsertNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlMergeInsertNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlMergeInsertNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeInsert: self
]

{ #category : #generated }
PsqlMergeInsertNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlMergeInsertNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlMergeInsertNode >> compositeNodeVariables [
	^ #(#columnNames #values)
]

{ #category : #generated }
PsqlMergeInsertNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlMergeInsertNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlMergeInsertNode >> values [
	^ values
]

{ #category : #generated }
PsqlMergeInsertNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
