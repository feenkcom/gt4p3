Class {
	#name : #PsqlMergeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'targetTableName',
		'targetAlias',
		'sourceTableName',
		'sourceAlias',
		'sourceQuery',
		'joinCondition',
		'whenClauses',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMergeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlMergeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlMergeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeCommand: self
]

{ #category : #generated }
PsqlMergeCommandNode >> compositeNodeVariables [
	^ #(#whenClauses #withQueries)
]

{ #category : #generated }
PsqlMergeCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlMergeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	whenClauses := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlMergeCommandNode >> joinCondition [
	^ joinCondition
]

{ #category : #generated }
PsqlMergeCommandNode >> joinCondition: aPsqlExpressionNode [
	self joinCondition notNil ifTrue: [ self joinCondition parent: nil ].
	joinCondition := aPsqlExpressionNode.
	self joinCondition notNil ifTrue: [ self joinCondition parent: self ]
]

{ #category : #generated }
PsqlMergeCommandNode >> nodeVariables [
	^ #(#sourceQuery #joinCondition)
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceAlias [
	^ sourceAlias
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceAlias: aSmaCCToken [
	sourceAlias := aSmaCCToken
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceQuery [
	^ sourceQuery
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceQuery: aPsqlProgramNode [
	self sourceQuery notNil ifTrue: [ self sourceQuery parent: nil ].
	sourceQuery := aPsqlProgramNode.
	self sourceQuery notNil ifTrue: [ self sourceQuery parent: self ]
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceTableName [
	^ sourceTableName
]

{ #category : #generated }
PsqlMergeCommandNode >> sourceTableName: aSmaCCToken [
	sourceTableName := aSmaCCToken
]

{ #category : #generated }
PsqlMergeCommandNode >> targetAlias [
	^ targetAlias
]

{ #category : #generated }
PsqlMergeCommandNode >> targetAlias: aSmaCCToken [
	targetAlias := aSmaCCToken
]

{ #category : #generated }
PsqlMergeCommandNode >> targetTableName [
	^ targetTableName
]

{ #category : #generated }
PsqlMergeCommandNode >> targetTableName: aSmaCCToken [
	targetTableName := aSmaCCToken
]

{ #category : #generated }
PsqlMergeCommandNode >> tokenVariables [
	^ #(#targetTableName #targetAlias #sourceTableName #sourceAlias)
]

{ #category : #generated }
PsqlMergeCommandNode >> whenClauses [
	^ whenClauses
]

{ #category : #generated }
PsqlMergeCommandNode >> whenClauses: anOrderedCollection [
	self setParents: self whenClauses to: nil.
	whenClauses := anOrderedCollection.
	self setParents: self whenClauses to: self
]

{ #category : #generated }
PsqlMergeCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlMergeCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]
