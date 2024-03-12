Class {
	#name : #PsqlTableConstraintNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'check',
		'columnNames',
		'indexMethod',
		'exclude',
		'operatorTokens',
		'predicate',
		'refTable',
		'refColumns',
		'referentialActions',
		'constraintName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTableConstraintNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlTableConstraintNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlTableConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTableConstraint: self
]

{ #category : #generated }
PsqlTableConstraintNode >> check [
	^ check
]

{ #category : #generated }
PsqlTableConstraintNode >> check: aPsqlExpressionNode [
	self check notNil ifTrue: [ self check parent: nil ].
	check := aPsqlExpressionNode.
	self check notNil ifTrue: [ self check parent: self ]
]

{ #category : #generated }
PsqlTableConstraintNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlTableConstraintNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlTableConstraintNode >> compositeNodeVariables [
	^ #(#columnNames #referentialActions)
]

{ #category : #generated }
PsqlTableConstraintNode >> compositeTokenVariables [
	^ #(#_s #operatorTokens #refColumns)
]

{ #category : #generated }
PsqlTableConstraintNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlTableConstraintNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlTableConstraintNode >> exclude [
	^ exclude
]

{ #category : #generated }
PsqlTableConstraintNode >> exclude: aPsqlExcludeElementNode [
	self exclude notNil ifTrue: [ self exclude parent: nil ].
	exclude := aPsqlExcludeElementNode.
	self exclude notNil ifTrue: [ self exclude parent: self ]
]

{ #category : #generated }
PsqlTableConstraintNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlTableConstraintNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlTableConstraintNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
	refColumns := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
]

{ #category : #testing }
PsqlTableConstraintNode >> isForeignKey [
	^ self keywordsBeginsWith: #('FOREIGN' 'KEY')
]

{ #category : #testing }
PsqlTableConstraintNode >> isPrimaryKey [
	^ self keywordsBeginsWith: #('PRIMARY' 'KEY')
]

{ #category : #testing }
PsqlTableConstraintNode >> isUnique [
	^ self keywordsBeginsWith: #('UNIQUE')
]

{ #category : #testing }
PsqlTableConstraintNode >> keywordsBeginsWith: aCollection [
	^ self _s size >= aCollection size
		and: [ (1 to: aCollection size)
				allSatisfy: [ :i | (self _s at: i) source sameAs: (aCollection at: i) ] ]
]

{ #category : #generated }
PsqlTableConstraintNode >> nodeVariables [
	^ #(#check #exclude #predicate #refTable)
]

{ #category : #generated }
PsqlTableConstraintNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
PsqlTableConstraintNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
]

{ #category : #generated }
PsqlTableConstraintNode >> predicate [
	^ predicate
]

{ #category : #generated }
PsqlTableConstraintNode >> predicate: aPsqlExpressionNode [
	self predicate notNil ifTrue: [ self predicate parent: nil ].
	predicate := aPsqlExpressionNode.
	self predicate notNil ifTrue: [ self predicate parent: self ]
]

{ #category : #generated }
PsqlTableConstraintNode >> refColumns [
	^ refColumns
]

{ #category : #generated }
PsqlTableConstraintNode >> refColumns: anOrderedCollection [
	refColumns := anOrderedCollection
]

{ #category : #generated }
PsqlTableConstraintNode >> refTable [
	^ refTable
]

{ #category : #generated }
PsqlTableConstraintNode >> refTable: aPsqlQualifiedNameNode [
	self refTable notNil ifTrue: [ self refTable parent: nil ].
	refTable := aPsqlQualifiedNameNode.
	self refTable notNil ifTrue: [ self refTable parent: self ]
]

{ #category : #generated }
PsqlTableConstraintNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlTableConstraintNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
]

{ #category : #generated }
PsqlTableConstraintNode >> tokenVariables [
	^ #(#indexMethod #constraintName)
]
