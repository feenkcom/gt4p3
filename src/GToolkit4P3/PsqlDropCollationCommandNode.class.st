Class {
	#name : #PsqlDropCollationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropCollationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropCollationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropCollationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropCollationCommand: self
]

{ #category : #generated }
PsqlDropCollationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropCollationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropCollationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropCollationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropCollationCommandNode >> nodeVariables [
	^ #(#name)
]
