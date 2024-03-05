Class {
	#name : #PsqlCreateServerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'serverName',
		'serverVersion',
		'fdwName',
		'options',
		'optionValues',
		'serverType'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateServerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateServerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateServerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateServerCommand: self
]

{ #category : #generated }
PsqlCreateServerCommandNode >> compositeTokenVariables [
	^ #(#_s #options #optionValues)
]

{ #category : #generated }
PsqlCreateServerCommandNode >> fdwName [
	^ fdwName
]

{ #category : #generated }
PsqlCreateServerCommandNode >> fdwName: aSmaCCToken [
	fdwName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateServerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	optionValues := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateServerCommandNode >> optionValues [
	^ optionValues
]

{ #category : #generated }
PsqlCreateServerCommandNode >> optionValues: anOrderedCollection [
	optionValues := anOrderedCollection
]

{ #category : #generated }
PsqlCreateServerCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCreateServerCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverType [
	^ serverType
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverType: aSmaCCToken [
	serverType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverVersion [
	^ serverVersion
]

{ #category : #generated }
PsqlCreateServerCommandNode >> serverVersion: aSmaCCToken [
	serverVersion := aSmaCCToken
]

{ #category : #generated }
PsqlCreateServerCommandNode >> tokenVariables [
	^ #(#serverName #serverVersion #fdwName #serverType)
]
