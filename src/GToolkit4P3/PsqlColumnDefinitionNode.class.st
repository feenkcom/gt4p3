Class {
	#name : #PsqlColumnDefinitionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'columnName',
		'dataType',
		'_s',
		'compressionMethod',
		'collation',
		'checks',
		'refTables',
		'defaultExpressions',
		'generationExpressions',
		'refColumns',
		'referentialActions',
		'constraintNames'
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
PsqlColumnDefinitionNode >> checks [
	^ checks
]

{ #category : #generated }
PsqlColumnDefinitionNode >> checks: anOrderedCollection [
	self setParents: self checks to: nil.
	checks := anOrderedCollection.
	self setParents: self checks to: self
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
PsqlColumnDefinitionNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlColumnDefinitionNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compositeNodeVariables [
	^ #(#checks #refTables #defaultExpressions #generationExpressions #referentialActions)
]

{ #category : #generated }
PsqlColumnDefinitionNode >> compositeTokenVariables [
	^ #(#_s #refColumns #constraintNames)
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
PsqlColumnDefinitionNode >> constraintNames [
	^ constraintNames
]

{ #category : #generated }
PsqlColumnDefinitionNode >> constraintNames: anOrderedCollection [
	constraintNames := anOrderedCollection
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

{ #category : #generated }
PsqlColumnDefinitionNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlColumnDefinitionNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
]

{ #category : #generated }
PsqlColumnDefinitionNode >> generationExpressions [
	^ generationExpressions
]

{ #category : #generated }
PsqlColumnDefinitionNode >> generationExpressions: anOrderedCollection [
	self setParents: self generationExpressions to: nil.
	generationExpressions := anOrderedCollection.
	self setParents: self generationExpressions to: self
]

{ #category : #'generated-initialize-release' }
PsqlColumnDefinitionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	checks := OrderedCollection new: 2.
	refTables := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
	generationExpressions := OrderedCollection new: 2.
	refColumns := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
	constraintNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlColumnDefinitionNode >> nodeVariables [
	^ #(#columnName #dataType #collation)
]

{ #category : #generated }
PsqlColumnDefinitionNode >> refColumns [
	^ refColumns
]

{ #category : #generated }
PsqlColumnDefinitionNode >> refColumns: anOrderedCollection [
	refColumns := anOrderedCollection
]

{ #category : #generated }
PsqlColumnDefinitionNode >> refTables [
	^ refTables
]

{ #category : #generated }
PsqlColumnDefinitionNode >> refTables: anOrderedCollection [
	self setParents: self refTables to: nil.
	refTables := anOrderedCollection.
	self setParents: self refTables to: self
]

{ #category : #generated }
PsqlColumnDefinitionNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlColumnDefinitionNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
]

{ #category : #generated }
PsqlColumnDefinitionNode >> tokenVariables [
	^ #(#compressionMethod)
]
