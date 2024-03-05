Class {
	#name : #PsqlCreateTableAsCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'columnNames',
		'method',
		'storageParameters',
		'storageValues',
		'tablespaceName',
		'query'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTableAsCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTableAsCommand: self
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> compositeNodeVariables [
	^ #(#columnNames #storageValues)
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> compositeTokenVariables [
	^ #(#_s #storageParameters)
]

{ #category : #'generated-initialize-release' }
PsqlCreateTableAsCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
	storageValues := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> method [
	^ method
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> method: aSmaCCToken [
	method := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> nodeVariables [
	^ #(#tableName #query)
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> query [
	^ query
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> query: aPsqlProgramNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlProgramNode.
	self query notNil ifTrue: [ self query parent: self ]
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> storageParameters: anOrderedCollection [
	storageParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> storageValues [
	^ storageValues
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> storageValues: anOrderedCollection [
	self setParents: self storageValues to: nil.
	storageValues := anOrderedCollection.
	self setParents: self storageValues to: self
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTableAsCommandNode >> tokenVariables [
	^ #(#method #tablespaceName)
]
