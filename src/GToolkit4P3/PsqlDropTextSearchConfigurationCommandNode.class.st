Class {
	#name : #PsqlDropTextSearchConfigurationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTextSearchConfigurationCommand: self
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTextSearchConfigurationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTextSearchConfigurationCommandNode >> nodeVariables [
	^ #(#name)
]
