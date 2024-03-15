Class {
	#name : #PsqlWithQueryNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'withQueryName',
		'_s',
		'withQueries',
		'columnNames',
		'searchSeqColName',
		'cycleMarkColName',
		'cyclePathColName',
		'cycleMarkValue',
		'cycleMarkDefault'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlWithQueryNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlWithQueryNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlWithQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWithQuery: self
]

{ #category : #generated }
PsqlWithQueryNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlWithQueryNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlWithQueryNode >> compositeNodeVariables [
	^ #(#withQueries #columnNames)
]

{ #category : #generated }
PsqlWithQueryNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkColName [
	^ cycleMarkColName
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkColName: aSmaCCToken [
	cycleMarkColName := aSmaCCToken
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkDefault [
	^ cycleMarkDefault
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkDefault: aPsqlExpressionNode [
	self cycleMarkDefault notNil ifTrue: [ self cycleMarkDefault parent: nil ].
	cycleMarkDefault := aPsqlExpressionNode.
	self cycleMarkDefault notNil ifTrue: [ self cycleMarkDefault parent: self ]
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkValue [
	^ cycleMarkValue
]

{ #category : #generated }
PsqlWithQueryNode >> cycleMarkValue: aPsqlExpressionNode [
	self cycleMarkValue notNil ifTrue: [ self cycleMarkValue parent: nil ].
	cycleMarkValue := aPsqlExpressionNode.
	self cycleMarkValue notNil ifTrue: [ self cycleMarkValue parent: self ]
]

{ #category : #generated }
PsqlWithQueryNode >> cyclePathColName [
	^ cyclePathColName
]

{ #category : #generated }
PsqlWithQueryNode >> cyclePathColName: aSmaCCToken [
	cyclePathColName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlWithQueryNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlWithQueryNode >> nodeVariables [
	^ #(#cycleMarkValue #cycleMarkDefault)
]

{ #category : #generated }
PsqlWithQueryNode >> searchSeqColName [
	^ searchSeqColName
]

{ #category : #generated }
PsqlWithQueryNode >> searchSeqColName: aSmaCCToken [
	searchSeqColName := aSmaCCToken
]

{ #category : #generated }
PsqlWithQueryNode >> tokenVariables [
	^ #(#withQueryName #searchSeqColName #cycleMarkColName #cyclePathColName)
]

{ #category : #generated }
PsqlWithQueryNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlWithQueryNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]

{ #category : #generated }
PsqlWithQueryNode >> withQueryName [
	^ withQueryName
]

{ #category : #generated }
PsqlWithQueryNode >> withQueryName: aSmaCCToken [
	withQueryName := aSmaCCToken
]
