Class {
	#name : #PsqlCreateExtensionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'extensionName',
		'schemaName',
		'version'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateExtensionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateExtensionCommand: self
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateExtensionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> schemaName [
	^ schemaName
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> schemaName: aSmaCCToken [
	schemaName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> tokenVariables [
	^ #(#extensionName #schemaName #version)
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> version [
	^ version
]

{ #category : #generated }
PsqlCreateExtensionCommandNode >> version: aSmaCCToken [
	version := aSmaCCToken
]
