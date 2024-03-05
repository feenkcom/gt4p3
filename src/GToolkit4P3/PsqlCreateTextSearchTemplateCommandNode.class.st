Class {
	#name : #PsqlCreateTextSearchTemplateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'lexizeFunction',
		'initFunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTextSearchTemplateCommand: self
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> initFunction [
	^ initFunction
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> initFunction: aSmaCCToken [
	initFunction := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateTextSearchTemplateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> lexizeFunction [
	^ lexizeFunction
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> lexizeFunction: aSmaCCToken [
	lexizeFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateTextSearchTemplateCommandNode >> tokenVariables [
	^ #(#lexizeFunction #initFunction)
]
