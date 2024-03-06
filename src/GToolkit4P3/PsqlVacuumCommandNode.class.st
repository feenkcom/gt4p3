Class {
	#name : #PsqlVacuumCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableAndColumnses',
		'options'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlVacuumCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlVacuumCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlVacuumCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVacuumCommand: self
]

{ #category : #generated }
PsqlVacuumCommandNode >> compositeNodeVariables [
	^ #(#tableAndColumnses #options)
]

{ #category : #generated }
PsqlVacuumCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlVacuumCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tableAndColumnses := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlVacuumCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlVacuumCommandNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
PsqlVacuumCommandNode >> tableAndColumnses [
	^ tableAndColumnses
]

{ #category : #generated }
PsqlVacuumCommandNode >> tableAndColumnses: anOrderedCollection [
	self setParents: self tableAndColumnses to: nil.
	tableAndColumnses := anOrderedCollection.
	self setParents: self tableAndColumnses to: self
]
