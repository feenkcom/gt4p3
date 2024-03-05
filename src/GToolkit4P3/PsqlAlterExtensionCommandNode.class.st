Class {
	#name : #PsqlAlterExtensionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newVersion',
		'newSchemaName',
		'memberObject'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterExtensionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterExtensionCommand: self
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterExtensionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> memberObject [
	^ memberObject
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> memberObject: aPsqlMemberObjectNode [
	self memberObject notNil ifTrue: [ self memberObject parent: nil ].
	memberObject := aPsqlMemberObjectNode.
	self memberObject notNil ifTrue: [ self memberObject parent: self ]
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> newVersion [
	^ newVersion
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> newVersion: aSmaCCToken [
	newVersion := aSmaCCToken
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> nodeVariables [
	^ #(#name #memberObject)
]

{ #category : #generated }
PsqlAlterExtensionCommandNode >> tokenVariables [
	^ #(#newVersion #newSchemaName)
]
