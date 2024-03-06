Class {
	#name : #PsqlAlterEventTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterEventTriggerCommand: self
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterEventTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterEventTriggerCommandNode >> tokenVariables [
	^ #(#newOwner #newName)
]
