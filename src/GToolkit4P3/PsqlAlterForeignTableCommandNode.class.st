Class {
	#name : #PsqlAlterForeignTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'actions',
		'columnName',
		'newColumnName',
		'newName',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterForeignTableCommand: self
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> columnName: aPsqlExpressionNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlExpressionNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> compositeNodeVariables [
	^ #(#actions)
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterForeignTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newColumnName [
	^ newColumnName
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newColumnName: aSmaCCToken [
	newColumnName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> nodeVariables [
	^ #(#name #columnName)
]

{ #category : #generated }
PsqlAlterForeignTableCommandNode >> tokenVariables [
	^ #(#newColumnName #newName #newSchemaName)
]
