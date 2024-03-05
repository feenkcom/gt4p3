Class {
	#name : #PsqlShowCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlShowCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlShowCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlShowCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitShowCommand: self
]

{ #category : #generated }
PsqlShowCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlShowCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlShowCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlShowCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlShowCommandNode >> nodeVariables [
	^ #(#name)
]
