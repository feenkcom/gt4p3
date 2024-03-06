Class {
	#name : #PsqlDropAccessMethodCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropAccessMethodCommand: self
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropAccessMethodCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropAccessMethodCommandNode >> nodeVariables [
	^ #(#name)
]
