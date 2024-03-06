Class {
	#name : #PsqlDropDatabaseCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'options'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropDatabaseCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropDatabaseCommand: self
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> compositeTokenVariables [
	^ #(#_s #options)
]

{ #category : #'generated-initialize-release' }
PsqlDropDatabaseCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlDropDatabaseCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]
