Class {
	#name : #PsqlDropProcedureCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'argTypes',
		'argNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropProcedureCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropProcedureCommand: self
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #'generated-initialize-release' }
PsqlDropProcedureCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropProcedureCommandNode >> nodeVariables [
	^ #(#name)
]
