Class {
	#name : #PsqlClusterCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'indexName',
		'options'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlClusterCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlClusterCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlClusterCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClusterCommand: self
]

{ #category : #generated }
PsqlClusterCommandNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
PsqlClusterCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlClusterCommandNode >> indexName [
	^ indexName
]

{ #category : #generated }
PsqlClusterCommandNode >> indexName: aSmaCCToken [
	indexName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlClusterCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlClusterCommandNode >> nodeVariables [
	^ #(#tableName)
]

{ #category : #generated }
PsqlClusterCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlClusterCommandNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
PsqlClusterCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlClusterCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlClusterCommandNode >> tokenVariables [
	^ #(#indexName)
]
