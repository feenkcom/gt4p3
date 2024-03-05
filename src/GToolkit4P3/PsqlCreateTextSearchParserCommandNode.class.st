Class {
	#name : #PsqlCreateTextSearchParserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'startFunction',
		'gettokenFunction',
		'endFunction',
		'lextypesFunction',
		'headlineFunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTextSearchParserCommand: self
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> endFunction [
	^ endFunction
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> endFunction: aSmaCCToken [
	endFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> gettokenFunction [
	^ gettokenFunction
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> gettokenFunction: aSmaCCToken [
	gettokenFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> headlineFunction [
	^ headlineFunction
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> headlineFunction: aSmaCCToken [
	headlineFunction := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateTextSearchParserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> lextypesFunction [
	^ lextypesFunction
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> lextypesFunction: aSmaCCToken [
	lextypesFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> startFunction [
	^ startFunction
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> startFunction: aSmaCCToken [
	startFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchParserCommandNode >> tokenVariables [
	^ #(#startFunction #gettokenFunction #endFunction #lextypesFunction #headlineFunction)
]
