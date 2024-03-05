Class {
	#name : #PsqlDropTextSearchDictionaryCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTextSearchDictionaryCommand: self
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTextSearchDictionaryCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTextSearchDictionaryCommandNode >> nodeVariables [
	^ #(#name)
]
