Class {
	#name : #PsqlCreateViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'columnNames',
		'viewOptionNames',
		'viewOptionValues',
		'query'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateViewCommand: self
]

{ #category : #generated }
PsqlCreateViewCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateViewCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateViewCommandNode >> compositeNodeVariables [
	^ #(#columnNames #viewOptionValues)
]

{ #category : #generated }
PsqlCreateViewCommandNode >> compositeTokenVariables [
	^ #(#_s #viewOptionNames)
]

{ #category : #'generated-initialize-release' }
PsqlCreateViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	viewOptionNames := OrderedCollection new: 2.
	viewOptionValues := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateViewCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateViewCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateViewCommandNode >> nodeVariables [
	^ #(#name #query)
]

{ #category : #generated }
PsqlCreateViewCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlCreateViewCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
PsqlCreateViewCommandNode >> viewOptionNames [
	^ viewOptionNames
]

{ #category : #generated }
PsqlCreateViewCommandNode >> viewOptionNames: anOrderedCollection [
	viewOptionNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateViewCommandNode >> viewOptionValues [
	^ viewOptionValues
]

{ #category : #generated }
PsqlCreateViewCommandNode >> viewOptionValues: anOrderedCollection [
	self setParents: self viewOptionValues to: nil.
	viewOptionValues := anOrderedCollection.
	self setParents: self viewOptionValues to: self
]
