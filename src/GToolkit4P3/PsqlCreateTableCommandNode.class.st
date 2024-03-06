Class {
	#name : #PsqlCreateTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableName',
		'columns',
		'tableConstraints',
		'constraints',
		'parentTables',
		'columnNames',
		'collation',
		'opclasses',
		'partitionBy',
		'method',
		'storageParameters',
		'tablespaceName',
		'typeName',
		'columnConstraints',
		'partitionBoundExprs',
		'modulus',
		'remainder'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTableCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTableCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTableCommand: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlCreateTableCommandNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columnConstraints [
	^ columnConstraints
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columnConstraints: anOrderedCollection [
	self setParents: self columnConstraints to: nil.
	columnConstraints := anOrderedCollection.
	self setParents: self columnConstraints to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columns [
	^ columns
]

{ #category : #generated }
PsqlCreateTableCommandNode >> columns: anOrderedCollection [
	self setParents: self columns to: nil.
	columns := anOrderedCollection.
	self setParents: self columns to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> compositeNodeVariables [
	^ #(#columns #tableConstraints #constraints #parentTables #columnNames #columnConstraints #partitionBoundExprs)
]

{ #category : #generated }
PsqlCreateTableCommandNode >> compositeTokenVariables [
	^ #(#_s #opclasses)
]

{ #category : #generated }
PsqlCreateTableCommandNode >> constraints [
	^ constraints
]

{ #category : #generated }
PsqlCreateTableCommandNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : #'generated-initialize-release' }
PsqlCreateTableCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columns := OrderedCollection new: 2.
	tableConstraints := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
	parentTables := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	opclasses := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
	columnConstraints := OrderedCollection new: 2.
	partitionBoundExprs := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTableCommandNode >> method [
	^ method
]

{ #category : #generated }
PsqlCreateTableCommandNode >> method: aSmaCCToken [
	method := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTableCommandNode >> modulus [
	^ modulus
]

{ #category : #generated }
PsqlCreateTableCommandNode >> modulus: aPsqlNumberNode [
	self modulus notNil ifTrue: [ self modulus parent: nil ].
	modulus := aPsqlNumberNode.
	self modulus notNil ifTrue: [ self modulus parent: self ]
]

{ #category : #generated }
PsqlCreateTableCommandNode >> nodeVariables [
	^ #(#tableName #collation #partitionBy #modulus #remainder)
]

{ #category : #generated }
PsqlCreateTableCommandNode >> opclasses [
	^ opclasses
]

{ #category : #generated }
PsqlCreateTableCommandNode >> opclasses: anOrderedCollection [
	opclasses := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTableCommandNode >> otherVariables [
	^ #(#storageParameters)
]

{ #category : #generated }
PsqlCreateTableCommandNode >> parentTables [
	^ parentTables
]

{ #category : #generated }
PsqlCreateTableCommandNode >> parentTables: anOrderedCollection [
	self setParents: self parentTables to: nil.
	parentTables := anOrderedCollection.
	self setParents: self parentTables to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> partitionBoundExprs [
	^ partitionBoundExprs
]

{ #category : #generated }
PsqlCreateTableCommandNode >> partitionBoundExprs: anOrderedCollection [
	self setParents: self partitionBoundExprs to: nil.
	partitionBoundExprs := anOrderedCollection.
	self setParents: self partitionBoundExprs to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> partitionBy [
	^ partitionBy
]

{ #category : #generated }
PsqlCreateTableCommandNode >> partitionBy: aPsqlExpressionNode [
	self partitionBy notNil ifTrue: [ self partitionBy parent: nil ].
	partitionBy := aPsqlExpressionNode.
	self partitionBy notNil ifTrue: [ self partitionBy parent: self ]
]

{ #category : #generated }
PsqlCreateTableCommandNode >> remainder [
	^ remainder
]

{ #category : #generated }
PsqlCreateTableCommandNode >> remainder: aPsqlNumberNode [
	self remainder notNil ifTrue: [ self remainder parent: nil ].
	remainder := aPsqlNumberNode.
	self remainder notNil ifTrue: [ self remainder parent: self ]
]

{ #category : #generated }
PsqlCreateTableCommandNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlCreateTableCommandNode >> storageParameters: anOrderedCollection [
	self setParent: self storageParameters to: nil.
	storageParameters := anOrderedCollection.
	self setParent: self storageParameters to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tableConstraints [
	^ tableConstraints
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tableConstraints: anOrderedCollection [
	self setParents: self tableConstraints to: nil.
	tableConstraints := anOrderedCollection.
	self setParents: self tableConstraints to: self
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTableCommandNode >> tokenVariables [
	^ #(#method #tablespaceName #typeName)
]

{ #category : #generated }
PsqlCreateTableCommandNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlCreateTableCommandNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]
