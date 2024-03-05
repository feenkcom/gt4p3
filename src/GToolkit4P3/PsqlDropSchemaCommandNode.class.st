Class {
	#name : #PsqlDropSchemaCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropSchemaCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropSchemaCommand: self
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropSchemaCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropSchemaCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
