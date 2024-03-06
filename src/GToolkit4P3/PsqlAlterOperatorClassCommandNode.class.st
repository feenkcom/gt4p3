Class {
	#name : #PsqlAlterOperatorClassCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'indexMethod',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterOperatorClassCommand: self
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterOperatorClassCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterOperatorClassCommandNode >> tokenVariables [
	^ #(#indexMethod #newName #newOwner #newSchemaName)
]
