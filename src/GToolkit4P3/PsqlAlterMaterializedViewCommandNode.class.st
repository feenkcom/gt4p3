Class {
	#name : #PsqlAlterMaterializedViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'actions',
		'extensionName',
		'columnName',
		'newColumnName',
		'newName',
		'newSchemaName',
		'newTablespaceName',
		'roleNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterMaterializedViewCommand: self
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> compositeNodeVariables [
	^ #(#actions)
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> compositeTokenVariables [
	^ #(#_s #roleNames)
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterMaterializedViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newColumnName [
	^ newColumnName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newColumnName: aSmaCCToken [
	newColumnName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> nodeVariables [
	^ #(#name #columnName)
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterMaterializedViewCommandNode >> tokenVariables [
	^ #(#extensionName #newColumnName #newName #newSchemaName #newTablespaceName)
]
