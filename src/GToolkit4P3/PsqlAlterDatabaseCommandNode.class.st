Class {
	#name : #PsqlAlterDatabaseCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'options',
		'newName',
		'newOwner',
		'newTablespaceName',
		'configurationParameter',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterDatabaseCommand: self
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterDatabaseCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> nodeVariables [
	^ #(#name #value)
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newTablespaceName #configurationParameter)
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> value [
	^ value
]

{ #category : #generated }
PsqlAlterDatabaseCommandNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
