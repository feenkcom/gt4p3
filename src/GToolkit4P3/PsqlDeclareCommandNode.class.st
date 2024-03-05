Class {
	#name : #PsqlDeclareCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'query'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDeclareCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDeclareCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDeclareCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeclareCommand: self
]

{ #category : #generated }
PsqlDeclareCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDeclareCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDeclareCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDeclareCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDeclareCommandNode >> nodeVariables [
	^ #(#name #query)
]

{ #category : #generated }
PsqlDeclareCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlDeclareCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]
