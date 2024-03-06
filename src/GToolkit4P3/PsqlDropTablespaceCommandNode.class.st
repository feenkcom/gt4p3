Class {
	#name : #PsqlDropTablespaceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTablespaceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTablespaceCommand: self
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTablespaceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropTablespaceCommandNode >> nodeVariables [
	^ #(#name)
]
