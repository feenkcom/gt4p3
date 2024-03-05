Class {
	#name : #PsqlCreateTextSearchDictionaryCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'template',
		'options',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTextSearchDictionaryCommand: self
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> compositeTokenVariables [
	^ #(#_s #options)
]

{ #category : #'generated-initialize-release' }
PsqlCreateTextSearchDictionaryCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> template [
	^ template
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> template: aSmaCCToken [
	template := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> tokenVariables [
	^ #(#template)
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateTextSearchDictionaryCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
