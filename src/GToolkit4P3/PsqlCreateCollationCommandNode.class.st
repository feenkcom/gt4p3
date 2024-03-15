Class {
	#name : #PsqlCreateCollationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'locales',
		'lcCollates',
		'lcCtypes',
		'providers',
		'booleans',
		'ruleses',
		'versions',
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
PsqlCreateCollationCommandNode >> booleans [
	^ booleans
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> booleans: anOrderedCollection [
	self setParents: self booleans to: nil.
	booleans := anOrderedCollection.
	self setParents: self booleans to: self
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> compositeNodeVariables [
	^ #(#booleans)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> compositeTokenVariables [
	^ #(#_s #locales #lcCollates #lcCtypes #providers #ruleses #versions)
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
	locales := OrderedCollection new: 2.
	lcCollates := OrderedCollection new: 2.
	lcCtypes := OrderedCollection new: 2.
	providers := OrderedCollection new: 2.
	booleans := OrderedCollection new: 2.
	ruleses := OrderedCollection new: 2.
	versions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCollates [
	^ lcCollates
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCollates: anOrderedCollection [
	lcCollates := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCtypes [
	^ lcCtypes
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> lcCtypes: anOrderedCollection [
	lcCtypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> locales [
	^ locales
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> locales: anOrderedCollection [
	locales := anOrderedCollection
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
	^ #(#name)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> providers [
	^ providers
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> providers: anOrderedCollection [
	providers := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> ruleses [
	^ ruleses
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> ruleses: anOrderedCollection [
	ruleses := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> tokenVariables [
	^ #(#existingCollation)
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> versions [
	^ versions
]

{ #category : #generated }
PsqlCreateCollationCommandNode >> versions: anOrderedCollection [
	versions := anOrderedCollection
]
