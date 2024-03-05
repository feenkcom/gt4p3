Class {
	#name : #PsqlCreateEventTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'event',
		'functionName',
		'filterVariables',
		'filterValues'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateEventTriggerCommand: self
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> compositeNodeVariables [
	^ #(#filterValues)
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s #filterVariables)
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> event [
	^ event
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> event: aSmaCCToken [
	event := aSmaCCToken
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> filterValues [
	^ filterValues
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> filterValues: anOrderedCollection [
	self setParents: self filterValues to: nil.
	filterValues := anOrderedCollection.
	self setParents: self filterValues to: self
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> filterVariables [
	^ filterVariables
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> filterVariables: anOrderedCollection [
	filterVariables := anOrderedCollection
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateEventTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	filterVariables := OrderedCollection new: 2.
	filterValues := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateEventTriggerCommandNode >> tokenVariables [
	^ #(#event #functionName)
]
