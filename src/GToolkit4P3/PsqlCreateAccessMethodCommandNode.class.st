Class {
	#name : #PsqlCreateAccessMethodCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'handlerFunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateAccessMethodCommand: self
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> handlerFunction [
	^ handlerFunction
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> handlerFunction: aSmaCCToken [
	handlerFunction := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateAccessMethodCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateAccessMethodCommandNode >> tokenVariables [
	^ #(#handlerFunction)
]
