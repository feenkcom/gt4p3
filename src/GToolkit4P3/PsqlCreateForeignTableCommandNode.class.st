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
		'columnConstraints',
		'tableConstraints',
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
PsqlCreateForeignTableCommandNode >> columnConstraints [
	^ columnConstraints
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> columnConstraints: anOrderedCollection [
	self setParents: self columnConstraints to: nil.
	columnConstraints := anOrderedCollection.
	self setParents: self columnConstraints to: self
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
	^ #(#parentTables #columnNames #dataTypes #collations #columnConstraints #tableConstraints #partitionBoundExprs)
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> compositeTokenVariables [
	^ #(#_s #options #values)
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
	columnConstraints := OrderedCollection new: 2.
	tableConstraints := OrderedCollection new: 2.
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
PsqlCreateForeignTableCommandNode >> tableConstraints [
	^ tableConstraints
]

{ #category : #generated }
PsqlCreateForeignTableCommandNode >> tableConstraints: anOrderedCollection [
	self setParents: self tableConstraints to: nil.
	tableConstraints := anOrderedCollection.
	self setParents: self tableConstraints to: self
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
