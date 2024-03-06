Class {
	#name : #PsqlExecuteCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'parameters'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlExecuteCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlExecuteCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlExecuteCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecuteCommand: self
]

{ #category : #generated }
PsqlExecuteCommandNode >> compositeNodeVariables [
	^ #(#parameters)
]

{ #category : #generated }
PsqlExecuteCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlExecuteCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlExecuteCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlExecuteCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlExecuteCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlExecuteCommandNode >> parameters [
	^ parameters
]

{ #category : #generated }
PsqlExecuteCommandNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]
