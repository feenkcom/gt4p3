Class {
	#name : #PsqlDomainConstraintNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'constraintName',
		'check'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDomainConstraintNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDomainConstraintNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDomainConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDomainConstraint: self
]

{ #category : #generated }
PsqlDomainConstraintNode >> check [
	^ check
]

{ #category : #generated }
PsqlDomainConstraintNode >> check: aPsqlExpressionNode [
	self check notNil ifTrue: [ self check parent: nil ].
	check := aPsqlExpressionNode.
	self check notNil ifTrue: [ self check parent: self ]
]

{ #category : #generated }
PsqlDomainConstraintNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlDomainConstraintNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlDomainConstraintNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlDomainConstraintNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDomainConstraintNode >> nodeVariables [
	^ #(#check)
]

{ #category : #generated }
PsqlDomainConstraintNode >> tokenVariables [
	^ #(#constraintName)
]
