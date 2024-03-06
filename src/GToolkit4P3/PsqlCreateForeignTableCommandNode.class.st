Class {
	#name : #PsqlCreateForeignTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'parentTables',
		'serverName',
		'options',
		'values',
		'columnNames',
		'dataTypes',
		'collations',
		'checks',
		'refTables',
		'defaultExpressions',
		'generationExpressions',
		'refColumns',
		'referentialActions',
		'constraintNames',
		'excludes',
		'operatorTokens',
		'indexMethods',
		'predicates',
		'partitionBoundExprs',
		'modulus',
		'remainder'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateForeignTableCommand: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> checks [
	^ checks
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> checks: anOrderedCollection [
	self setParents: self checks to: nil.
	checks := anOrderedCollection.
	self setParents: self checks to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> collations [
	^ collations
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> collations: anOrderedCollection [
	self setParents: self collations to: nil.
	collations := anOrderedCollection.
	self setParents: self collations to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> compositeNodeVariables [
	^ #(#parentTables #columnNames #dataTypes #collations #checks #refTables #defaultExpressions #generationExpressions #referentialActions #excludes #predicates #partitionBoundExprs)
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> compositeTokenVariables [
	^ #(#_s #options #values #refColumns #constraintNames #operatorTokens #indexMethods)
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> constraintNames [
	^ constraintNames
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> constraintNames: anOrderedCollection [
	constraintNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> dataTypes [
	^ dataTypes
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> dataTypes: anOrderedCollection [
	self setParents: self dataTypes to: nil.
	dataTypes := anOrderedCollection.
	self setParents: self dataTypes to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> excludes [
	^ excludes
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> excludes: anOrderedCollection [
	self setParents: self excludes to: nil.
	excludes := anOrderedCollection.
	self setParents: self excludes to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> generationExpressions [
	^ generationExpressions
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> generationExpressions: anOrderedCollection [
	self setParents: self generationExpressions to: nil.
	generationExpressions := anOrderedCollection.
	self setParents: self generationExpressions to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> indexMethods [
	^ indexMethods
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> indexMethods: anOrderedCollection [
	indexMethods := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlCreateForeignTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	parentTables := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	dataTypes := OrderedCollection new: 2.
	collations := OrderedCollection new: 2.
	checks := OrderedCollection new: 2.
	refTables := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
	generationExpressions := OrderedCollection new: 2.
	refColumns := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
	constraintNames := OrderedCollection new: 2.
	excludes := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
	indexMethods := OrderedCollection new: 2.
	predicates := OrderedCollection new: 2.
	partitionBoundExprs := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> modulus [
	^ modulus
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> modulus: aPsqlNumberNode [
	self modulus notNil ifTrue: [ self modulus parent: nil ].
	modulus := aPsqlNumberNode.
	self modulus notNil ifTrue: [ self modulus parent: self ]
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> nodeVariables [
	^ #(#tableName #modulus #remainder)
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> parentTables [
	^ parentTables
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> parentTables: anOrderedCollection [
	self setParents: self parentTables to: nil.
	parentTables := anOrderedCollection.
	self setParents: self parentTables to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> partitionBoundExprs [
	^ partitionBoundExprs
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> partitionBoundExprs: anOrderedCollection [
	self setParents: self partitionBoundExprs to: nil.
	partitionBoundExprs := anOrderedCollection.
	self setParents: self partitionBoundExprs to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> predicates [
	^ predicates
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> predicates: anOrderedCollection [
	self setParents: self predicates to: nil.
	predicates := anOrderedCollection.
	self setParents: self predicates to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> refColumns [
	^ refColumns
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> refColumns: anOrderedCollection [
	refColumns := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> refTables [
	^ refTables
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> refTables: anOrderedCollection [
	self setParents: self refTables to: nil.
	refTables := anOrderedCollection.
	self setParents: self refTables to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> remainder [
	^ remainder
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> remainder: aPsqlNumberNode [
	self remainder notNil ifTrue: [ self remainder parent: nil ].
	remainder := aPsqlNumberNode.
	self remainder notNil ifTrue: [ self remainder parent: self ]
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> tokenVariables [
	^ #(#serverName)
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
