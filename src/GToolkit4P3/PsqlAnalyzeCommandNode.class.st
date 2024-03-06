Class {
	#name : #PsqlAnalyzeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'columnNames',
		'options'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAnalyzeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnalyzeCommand: self
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> columnNames: anOrderedCollection [
	columnNames := anOrderedCollection
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> compositeTokenVariables [
	^ #(#_s #columnNames)
]

{ #category : #'generated-initialize-release' }
PsqlAnalyzeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> nodeVariables [
	^ #(#tableName)
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlAnalyzeCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]
