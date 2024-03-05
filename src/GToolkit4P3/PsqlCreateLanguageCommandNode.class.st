Class {
	#name : #PsqlCreateLanguageCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'callHandler',
		'inlineHandler',
		'valfunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateLanguageCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateLanguageCommand: self
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> callHandler [
	^ callHandler
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> callHandler: aSmaCCToken [
	callHandler := aSmaCCToken
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCreateLanguageCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> inlineHandler [
	^ inlineHandler
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> inlineHandler: aSmaCCToken [
	inlineHandler := aSmaCCToken
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> tokenVariables [
	^ #(#callHandler #inlineHandler #valfunction)
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> valfunction [
	^ valfunction
]

{ #category : #generated }
PsqlCreateLanguageCommandNode >> valfunction: aSmaCCToken [
	valfunction := aSmaCCToken
]
