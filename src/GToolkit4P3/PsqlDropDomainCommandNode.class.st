Class {
	#name : #PsqlDropDomainCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropDomainCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropDomainCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropDomainCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropDomainCommand: self
]

{ #category : #generated }
PsqlDropDomainCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropDomainCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropDomainCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropDomainCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropDomainCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
