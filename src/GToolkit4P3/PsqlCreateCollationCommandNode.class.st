Class {
	#name : #PsqlCreateCollationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'lcCollate',
		'lcCtype',
		'provider',
		'boolean',
		'rules',
		'version',
		'locale',
		'existingCollation'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateCollationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateCollationCommand: self
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> boolean [
	^ boolean
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> boolean: aPsqlBooleanNode [
	self boolean notNil ifTrue: [ self boolean parent: nil ].
	boolean := aPsqlBooleanNode.
	self boolean notNil ifTrue: [ self boolean parent: self ]
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> existingCollation [
	^ existingCollation
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> existingCollation: aSmaCCToken [
	existingCollation := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateCollationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCollate [
	^ lcCollate
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCollate: aSmaCCToken [
	lcCollate := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCtype [
	^ lcCtype
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCtype: aSmaCCToken [
	lcCtype := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> locale [
	^ locale
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> locale: aSmaCCToken [
	locale := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> nodeVariables [
	^ #(#name #boolean)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> provider [
	^ provider
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> provider: aSmaCCToken [
	provider := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> rules [
	^ rules
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> rules: aSmaCCToken [
	rules := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> tokenVariables [
	^ #(#lcCollate #lcCtype #provider #rules #version #locale #existingCollation)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> version [
	^ version
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> version: aSmaCCToken [
	version := aSmaCCToken
]
