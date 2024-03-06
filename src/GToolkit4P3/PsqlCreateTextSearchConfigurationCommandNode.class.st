Class {
	#name : #PsqlCreateTextSearchConfigurationCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'parserName',
		'sourceConfig'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTextSearchConfigurationCommand: self
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCreateTextSearchConfigurationCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> parserName [
	^ parserName
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> parserName: aSmaCCToken [
	parserName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> sourceConfig [
	^ sourceConfig
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> sourceConfig: aSmaCCToken [
	sourceConfig := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTextSearchConfigurationCommandNode >> tokenVariables [
	^ #(#parserName #sourceConfig)
]
