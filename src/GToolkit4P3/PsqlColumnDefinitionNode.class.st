Class {
	#name : #PsqlColumnDefinitionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'columnName',
		'dataType',
		'_s',
		'compressionMethod',
		'collation',
		'columnConstraints'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlColumnDefinitionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlColumnDefinitionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlColumnDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitColumnDefinition: self
]

{ #category : #generated }
PsqlColumnDefinitionNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlColumnDefinitionNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlColumnDefinitionNode >> columnConstraints [
	^ columnConstraints
]

{ #category : #generated }
PsqlColumnDefinitionNode >> columnConstraints: anOrderedCollection [
	self setParents: self columnConstraints to: nil.
	columnConstraints := anOrderedCollection.
	self setParents: self columnConstraints to: self
]

{ #category : #generated }
PsqlColumnDefinitionNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlColumnDefinitionNode >> columnName: aPsqlExpressionNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlExpressionNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compositeNodeVariables [
	^ #(#columnConstraints)
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compressionMethod [
	^ compressionMethod
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compressionMethod: aSmaCCToken [
	compressionMethod := aSmaCCToken
]

{ #category : #generated }
PsqlColumnDefinitionNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlColumnDefinitionNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlColumnDefinitionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnConstraints := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlColumnDefinitionNode >> nodeVariables [
	^ #(#columnName #dataType #collation)
]

{ #category : #generated }
PsqlColumnDefinitionNode >> tokenVariables [
	^ #(#compressionMethod)
]
