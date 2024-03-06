Class {
	#name : #PsqlReferentialActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlReferentialActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlReferentialActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlReferentialActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReferentialAction: self
]

{ #category : #generated }
PsqlReferentialActionNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlReferentialActionNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlReferentialActionNode >> compositeNodeVariables [
	^ #(#columnNames)
]

{ #category : #generated }
PsqlReferentialActionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlReferentialActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
]
