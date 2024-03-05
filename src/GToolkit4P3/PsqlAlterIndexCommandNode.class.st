Class {
	#name : #PsqlAlterIndexCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newName',
		'tablespaceName',
		'indexName',
		'extensionName',
		'storageParameters',
		'values',
		'columnNumber',
		'integer',
		'newTablespaceName',
		'roleNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterIndexCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterIndexCommand: self
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> columnNumber [
	^ columnNumber
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> columnNumber: aPsqlNumberNode [
	self columnNumber notNil ifTrue: [ self columnNumber parent: nil ].
	columnNumber := aPsqlNumberNode.
	self columnNumber notNil ifTrue: [ self columnNumber parent: self ]
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> compositeTokenVariables [
	^ #(#_s #storageParameters #roleNames)
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> indexName [
	^ indexName
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> indexName: aSmaCCToken [
	indexName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterIndexCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> integer [
	^ integer
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> integer: aPsqlNumberNode [
	self integer notNil ifTrue: [ self integer parent: nil ].
	integer := aPsqlNumberNode.
	self integer notNil ifTrue: [ self integer parent: self ]
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> nodeVariables [
	^ #(#name #columnNumber #integer)
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> storageParameters: anOrderedCollection [
	storageParameters := anOrderedCollection
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> tokenVariables [
	^ #(#newName #tablespaceName #indexName #extensionName #newTablespaceName)
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterIndexCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
