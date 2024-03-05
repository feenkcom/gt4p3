Class {
	#name : #PsqlCreateIndexCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'indexName',
		'tableName',
		'method',
		'columnNames',
		'collation',
		'opclasses',
		'opclassParameterNames',
		'opclassParameters',
		'storageParameters',
		'tablespaceName',
		'predicate',
		'expression'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateIndexCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateIndexCommand: self
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> compositeNodeVariables [
	^ #(#columnNames #opclassParameters)
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> compositeTokenVariables [
	^ #(#_s #opclasses #opclassParameterNames)
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> expression [
	^ expression
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> expression: aPsqlExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aPsqlExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> indexName [
	^ indexName
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> indexName: aPsqlQualifiedNameNode [
	self indexName notNil ifTrue: [ self indexName parent: nil ].
	indexName := aPsqlQualifiedNameNode.
	self indexName notNil ifTrue: [ self indexName parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCreateIndexCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	opclasses := OrderedCollection new: 2.
	opclassParameterNames := OrderedCollection new: 2.
	opclassParameters := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> method [
	^ method
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> method: aSmaCCToken [
	method := aSmaCCToken
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> nodeVariables [
	^ #(#indexName #tableName #collation #predicate #expression)
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclassParameterNames [
	^ opclassParameterNames
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclassParameterNames: anOrderedCollection [
	opclassParameterNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclassParameters [
	^ opclassParameters
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclassParameters: anOrderedCollection [
	self setParents: self opclassParameters to: nil.
	opclassParameters := anOrderedCollection.
	self setParents: self opclassParameters to: self
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclasses [
	^ opclasses
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> opclasses: anOrderedCollection [
	opclasses := anOrderedCollection
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> otherVariables [
	^ #(#storageParameters)
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> predicate [
	^ predicate
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> predicate: aPsqlExpressionNode [
	self predicate notNil ifTrue: [ self predicate parent: nil ].
	predicate := aPsqlExpressionNode.
	self predicate notNil ifTrue: [ self predicate parent: self ]
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> storageParameters: anOrderedCollection [
	self setParent: self storageParameters to: nil.
	storageParameters := anOrderedCollection.
	self setParent: self storageParameters to: self
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateIndexCommandNode >> tokenVariables [
	^ #(#method #tablespaceName)
]
