Class {
	#name : #PsqlDropLanguageCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropLanguageCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropLanguageCommand: self
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropLanguageCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropLanguageCommandNode >> nodeVariables [
	^ #(#name)
]
