Class {
	#name : #PsqlInsertCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'alias',
		'columnNames',
		'conflictAction',
		'conflictTarget',
		'outputExpressions',
		'outputNames',
		'values',
		'query',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlInsertCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlInsertCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlInsertCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInsertCommand: self
]

{ #category : #generated }
PsqlInsertCommandNode >> alias [
	^ alias
]

{ #category : #generated }
PsqlInsertCommandNode >> alias: aSmaCCToken [
	alias := aSmaCCToken
]

{ #category : #generated }
PsqlInsertCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlInsertCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlInsertCommandNode >> compositeNodeVariables [
	^ #(#columnNames #outputExpressions #values #withQueries)
]

{ #category : #generated }
PsqlInsertCommandNode >> compositeTokenVariables [
	^ #(#_s #outputNames)
]

{ #category : #generated }
PsqlInsertCommandNode >> conflictAction [
	^ conflictAction
]

{ #category : #generated }
PsqlInsertCommandNode >> conflictAction: aPsqlConflictActionNode [
	self conflictAction notNil ifTrue: [ self conflictAction parent: nil ].
	conflictAction := aPsqlConflictActionNode.
	self conflictAction notNil ifTrue: [ self conflictAction parent: self ]
]

{ #category : #generated }
PsqlInsertCommandNode >> conflictTarget [
	^ conflictTarget
]

{ #category : #generated }
PsqlInsertCommandNode >> conflictTarget: aPsqlConflictTargetNode [
	self conflictTarget notNil ifTrue: [ self conflictTarget parent: nil ].
	conflictTarget := aPsqlConflictTargetNode.
	self conflictTarget notNil ifTrue: [ self conflictTarget parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlInsertCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	outputExpressions := OrderedCollection new: 2.
	outputNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlInsertCommandNode >> nodeVariables [
	^ #(#tableName #conflictAction #conflictTarget #query)
]

{ #category : #generated }
PsqlInsertCommandNode >> outputExpressions [
	^ outputExpressions
]

{ #category : #generated }
PsqlInsertCommandNode >> outputExpressions: anOrderedCollection [
	self setParents: self outputExpressions to: nil.
	outputExpressions := anOrderedCollection.
	self setParents: self outputExpressions to: self
]

{ #category : #generated }
PsqlInsertCommandNode >> outputNames [
	^ outputNames
]

{ #category : #generated }
PsqlInsertCommandNode >> outputNames: anOrderedCollection [
	outputNames := anOrderedCollection
]

{ #category : #generated }
PsqlInsertCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlInsertCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
PsqlInsertCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlInsertCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlInsertCommandNode >> tokenVariables [
	^ #(#alias)
]

{ #category : #generated }
PsqlInsertCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlInsertCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
PsqlInsertCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlInsertCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]
