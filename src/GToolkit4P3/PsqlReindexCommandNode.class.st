Class {
	#name : #PsqlReindexCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'options'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlReindexCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlReindexCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlReindexCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReindexCommand: self
]

{ #category : #generated }
PsqlReindexCommandNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
PsqlReindexCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlReindexCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlReindexCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlReindexCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlReindexCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlReindexCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlReindexCommandNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]
