Class {
	#name : #PsqlColumnConstraintNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'check',
		'defaultExpression',
		'generationExpression',
		'refTable',
		'refColumn',
		'referentialActions',
		'constraintName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlColumnConstraintNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlColumnConstraintNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlColumnConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitColumnConstraint: self
]

{ #category : #generated }
PsqlColumnConstraintNode >> check [
	^ check
]

{ #category : #generated }
PsqlColumnConstraintNode >> check: aPsqlExpressionNode [
	self check notNil ifTrue: [ self check parent: nil ].
	check := aPsqlExpressionNode.
	self check notNil ifTrue: [ self check parent: self ]
]

{ #category : #generated }
PsqlColumnConstraintNode >> compositeNodeVariables [
	^ #(#referentialActions)
]

{ #category : #generated }
PsqlColumnConstraintNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlColumnConstraintNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlColumnConstraintNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlColumnConstraintNode >> defaultExpression [
	^ defaultExpression
]

{ #category : #generated }
PsqlColumnConstraintNode >> defaultExpression: aPsqlExpressionNode [
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: nil ].
	defaultExpression := aPsqlExpressionNode.
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: self ]
]

{ #category : #generated }
PsqlColumnConstraintNode >> generationExpression [
	^ generationExpression
]

{ #category : #generated }
PsqlColumnConstraintNode >> generationExpression: aPsqlExpressionNode [
	self generationExpression notNil
		ifTrue: [ self generationExpression parent: nil ].
	generationExpression := aPsqlExpressionNode.
	self generationExpression notNil
		ifTrue: [ self generationExpression parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlColumnConstraintNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlColumnConstraintNode >> nodeVariables [
	^ #(#check #defaultExpression #generationExpression #refTable)
]

{ #category : #generated }
PsqlColumnConstraintNode >> refColumn [
	^ refColumn
]

{ #category : #generated }
PsqlColumnConstraintNode >> refColumn: aSmaCCToken [
	refColumn := aSmaCCToken
]

{ #category : #generated }
PsqlColumnConstraintNode >> refTable [
	^ refTable
]

{ #category : #generated }
PsqlColumnConstraintNode >> refTable: aPsqlQualifiedNameNode [
	self refTable notNil ifTrue: [ self refTable parent: nil ].
	refTable := aPsqlQualifiedNameNode.
	self refTable notNil ifTrue: [ self refTable parent: self ]
]

{ #category : #generated }
PsqlColumnConstraintNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlColumnConstraintNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
]

{ #category : #generated }
PsqlColumnConstraintNode >> tokenVariables [
	^ #(#refColumn #constraintName)
]
