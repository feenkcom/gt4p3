Class {
	#name : #PsqlDropTextSearchParserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTextSearchParserCommand: self
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTextSearchParserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTextSearchParserCommandNode >> nodeVariables [
	^ #(#name)
]
