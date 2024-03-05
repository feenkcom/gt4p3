Class {
	#name : #PsqlDropRoutineCommandNode,
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
PsqlDropRoutineCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropRoutineCommand: self
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #'generated-initialize-release' }
PsqlDropRoutineCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropRoutineCommandNode >> nodeVariables [
	^ #(#name)
]
