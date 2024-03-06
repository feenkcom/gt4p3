Class {
	#name : #PsqlAlterServerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'options',
		'stringTokens',
		'vERSIONToken',
		'newVersion',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterServerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterServerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterServerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterServerCommand: self
]

{ #category : #generated }
PsqlAlterServerCommandNode >> compositeTokenVariables [
	^ #(#_s #options #stringTokens)
]

{ #category : #'generated-initialize-release' }
PsqlAlterServerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	stringTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterServerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterServerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newVersion [
	^ newVersion
]

{ #category : #generated }
PsqlAlterServerCommandNode >> newVersion: aSmaCCToken [
	newVersion := aSmaCCToken
]

{ #category : #generated }
PsqlAlterServerCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterServerCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterServerCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlAlterServerCommandNode >> stringTokens [
	^ stringTokens
]

{ #category : #generated }
PsqlAlterServerCommandNode >> stringTokens: anOrderedCollection [
	stringTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterServerCommandNode >> tokenVariables [
	^ #(#vERSIONToken #newVersion #newOwner #newName)
]

{ #category : #generated }
PsqlAlterServerCommandNode >> vERSIONToken [
	^ vERSIONToken
]

{ #category : #generated }
PsqlAlterServerCommandNode >> vERSIONToken: aSmaCCToken [
	vERSIONToken := aSmaCCToken
]
