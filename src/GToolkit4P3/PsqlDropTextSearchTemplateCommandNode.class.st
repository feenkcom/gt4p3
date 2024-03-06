Class {
	#name : #PsqlDropTextSearchTemplateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTextSearchTemplateCommand: self
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTextSearchTemplateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTextSearchTemplateCommandNode >> nodeVariables [
	^ #(#name)
]
