Class {
	#name : #PsqlDropEventTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropEventTriggerCommand: self
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropEventTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropEventTriggerCommandNode >> nodeVariables [
	^ #(#name)
]
