Class {
	#name : #PsqlCopyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'_filename',
		'options',
		'condition',
		'command',
		'columnNames',
		'query'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCopyCommandNode >> _filename [
	^ _filename
]

{ #category : #generated }
PsqlCopyCommandNode >> _filename: aSmaCCToken [
	_filename := aSmaCCToken
]

{ #category : #generated }
PsqlCopyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCopyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCopyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCopyCommand: self
]

{ #category : #generated }
PsqlCopyCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCopyCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCopyCommandNode >> command [
	^ command
]

{ #category : #generated }
PsqlCopyCommandNode >> command: aSmaCCToken [
	command := aSmaCCToken
]

{ #category : #generated }
PsqlCopyCommandNode >> compositeNodeVariables [
	^ #(#columnNames)
]

{ #category : #generated }
PsqlCopyCommandNode >> compositeTokenVariables [
	^ #(#_s #options)
]

{ #category : #generated }
PsqlCopyCommandNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlCopyCommandNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCopyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCopyCommandNode >> nodeVariables [
	^ #(#tableName #condition #query)
]

{ #category : #generated }
PsqlCopyCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCopyCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCopyCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlCopyCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
PsqlCopyCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCopyCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCopyCommandNode >> tokenVariables [
	^ #(#_filename #command)
]
