Class {
	#name : #PsqlDropTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTableCommand: self
]

{ #category : #generated }
PsqlDropTableCommandNode >> compositeNodeVariables [
	^ #(#tableNames)
]

{ #category : #generated }
PsqlDropTableCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tableNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTableCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlDropTableCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]
