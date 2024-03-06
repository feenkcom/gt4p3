Class {
	#name : #PsqlCreateSchemaCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'schemaName',
		'elements',
		'userName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateSchemaCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateSchemaCommand: self
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> elements [
	^ elements
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #'generated-initialize-release' }
PsqlCreateSchemaCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> schemaName [
	^ schemaName
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> schemaName: aSmaCCToken [
	schemaName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> tokenVariables [
	^ #(#schemaName #userName)
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlCreateSchemaCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]
