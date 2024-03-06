Class {
	#name : #PsqlCreateDomainCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'dataType',
		'defaultExpression',
		'constraints',
		'collation'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateDomainCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateDomainCommand: self
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> compositeNodeVariables [
	^ #(#constraints)
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> constraints [
	^ constraints
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> defaultExpression [
	^ defaultExpression
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> defaultExpression: aPsqlExpressionNode [
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: nil ].
	defaultExpression := aPsqlExpressionNode.
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCreateDomainCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateDomainCommandNode >> nodeVariables [
	^ #(#name #dataType #defaultExpression #collation)
]
