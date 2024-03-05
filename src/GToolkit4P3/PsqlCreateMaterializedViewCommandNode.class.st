Class {
	#name : #PsqlCreateMaterializedViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'method',
		'storageParameters',
		'values',
		'tablespaceName',
		'query',
		'columnNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateMaterializedViewCommand: self
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> compositeNodeVariables [
	^ #(#values #columnNames)
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> compositeTokenVariables [
	^ #(#_s #storageParameters)
]

{ #category : #'generated-initialize-release' }
PsqlCreateMaterializedViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> method [
	^ method
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> method: aSmaCCToken [
	method := aSmaCCToken
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> nodeVariables [
	^ #(#tableName #query)
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> storageParameters: anOrderedCollection [
	storageParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> tokenVariables [
	^ #(#method #tablespaceName)
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateMaterializedViewCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
