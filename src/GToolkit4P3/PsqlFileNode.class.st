Class {
	#name : #PsqlFileNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'commands',
		'_s'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlFileNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlFileNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
PsqlFileNode >> commands [
	^ commands
]

{ #category : #generated }
PsqlFileNode >> commands: anOrderedCollection [
	self setParents: self commands to: nil.
	commands := anOrderedCollection.
	self setParents: self commands to: self
]

{ #category : #generated }
PsqlFileNode >> compositeNodeVariables [
	^ #(#commands)
]

{ #category : #generated }
PsqlFileNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlFileNode >> initialize [
	super initialize.
	commands := OrderedCollection new: 2.
	_s := OrderedCollection new: 2.
]
