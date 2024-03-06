Class {
	#name : #PsqlAlterTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'actions',
		'columnName',
		'newColumnName',
		'constraintName',
		'newConstraintName',
		'newTableName',
		'newSchemaName',
		'newTablespaceName',
		'roleNames',
		'partitionName',
		'partitionBoundExprs',
		'modulus',
		'remainder'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTableCommand: self
]

{ #category : #generated }
PsqlAlterTableCommandNode >> actions [
	^ actions
]

{ #category : #generated }
PsqlAlterTableCommandNode >> actions: anOrderedCollection [
	self setParents: self actions to: nil.
	actions := anOrderedCollection.
	self setParents: self actions to: self
]

{ #category : #generated }
PsqlAlterTableCommandNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterTableCommandNode >> compositeNodeVariables [
	^ #(#actions #partitionBoundExprs)
]

{ #category : #generated }
PsqlAlterTableCommandNode >> compositeTokenVariables [
	^ #(#_s #roleNames)
]

{ #category : #generated }
PsqlAlterTableCommandNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	actions := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
	partitionBoundExprs := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTableCommandNode >> modulus [
	^ modulus
]

{ #category : #generated }
PsqlAlterTableCommandNode >> modulus: aPsqlNumberNode [
	self modulus notNil ifTrue: [ self modulus parent: nil ].
	modulus := aPsqlNumberNode.
	self modulus notNil ifTrue: [ self modulus parent: self ]
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newColumnName [
	^ newColumnName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newColumnName: aSmaCCToken [
	newColumnName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newConstraintName [
	^ newConstraintName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newConstraintName: aSmaCCToken [
	newConstraintName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newTableName [
	^ newTableName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newTableName: aSmaCCToken [
	newTableName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> nodeVariables [
	^ #(#tableName #columnName #modulus #remainder)
]

{ #category : #generated }
PsqlAlterTableCommandNode >> partitionBoundExprs [
	^ partitionBoundExprs
]

{ #category : #generated }
PsqlAlterTableCommandNode >> partitionBoundExprs: anOrderedCollection [
	self setParents: self partitionBoundExprs to: nil.
	partitionBoundExprs := anOrderedCollection.
	self setParents: self partitionBoundExprs to: self
]

{ #category : #generated }
PsqlAlterTableCommandNode >> partitionName [
	^ partitionName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> partitionName: aSmaCCToken [
	partitionName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableCommandNode >> remainder [
	^ remainder
]

{ #category : #generated }
PsqlAlterTableCommandNode >> remainder: aPsqlNumberNode [
	self remainder notNil ifTrue: [ self remainder parent: nil ].
	remainder := aPsqlNumberNode.
	self remainder notNil ifTrue: [ self remainder parent: self ]
]

{ #category : #generated }
PsqlAlterTableCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlAlterTableCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlAlterTableCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlAlterTableCommandNode >> tokenVariables [
	^ #(#newColumnName #constraintName #newConstraintName #newTableName #newSchemaName #newTablespaceName #partitionName)
]
