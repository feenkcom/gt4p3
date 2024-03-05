Class {
	#name : #PsqlAlterRoleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName',
		'value',
		'stringToken',
		'name',
		'newName',
		'configurationParameter',
		'databaseName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterRoleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterRoleCommand: self
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> databaseName [
	^ databaseName
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> databaseName: aSmaCCToken [
	databaseName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterRoleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> nodeVariables [
	^ #(#value #name)
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> stringToken [
	^ stringToken
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> stringToken: aSmaCCToken [
	stringToken := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> tokenVariables [
	^ #(#userName #stringToken #newName #configurationParameter #databaseName)
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> value [
	^ value
]

{ #category : #generated }
PsqlAlterRoleCommandNode >> value: aPsqlExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
