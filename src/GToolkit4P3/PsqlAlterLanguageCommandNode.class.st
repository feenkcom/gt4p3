Class {
	#name : #PsqlAlterLanguageCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newName',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterLanguageCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterLanguageCommand: self
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterLanguageCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterLanguageCommandNode >> tokenVariables [
	^ #(#newName #newOwner)
]
