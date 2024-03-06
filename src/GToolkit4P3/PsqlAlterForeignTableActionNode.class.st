Class {
	#name : #PsqlAlterForeignTableActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnName',
		'type',
		'columnConstraints',
		'collation',
		'dataType',
		'defaultExpression',
		'integer',
		'attributeOptionNames',
		'values',
		'options',
		'stringTokens',
		'tableConstraint',
		'constraintName',
		'triggerName',
		'parentTable',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterForeignTableActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterForeignTableAction: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> attributeOptionNames [
	^ attributeOptionNames
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> attributeOptionNames: anOrderedCollection [
	attributeOptionNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> columnConstraints [
	^ columnConstraints
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> columnConstraints: anOrderedCollection [
	self setParents: self columnConstraints to: nil.
	columnConstraints := anOrderedCollection.
	self setParents: self columnConstraints to: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> compositeNodeVariables [
	^ #(#columnConstraints #values)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> compositeTokenVariables [
	^ #(#_s #attributeOptionNames #options #stringTokens)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> defaultExpression [
	^ defaultExpression
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> defaultExpression: aPsqlExpressionNode [
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: nil ].
	defaultExpression := aPsqlExpressionNode.
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterForeignTableActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnConstraints := OrderedCollection new: 2.
	attributeOptionNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	stringTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> integer [
	^ integer
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> integer: aPsqlNumberNode [
	self integer notNil ifTrue: [ self integer parent: nil ].
	integer := aPsqlNumberNode.
	self integer notNil ifTrue: [ self integer parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> nodeVariables [
	^ #(#columnName #type #collation #dataType #defaultExpression #integer #tableConstraint #parentTable)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> parentTable [
	^ parentTable
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> parentTable: aPsqlQualifiedNameNode [
	self parentTable notNil ifTrue: [ self parentTable parent: nil ].
	parentTable := aPsqlQualifiedNameNode.
	self parentTable notNil ifTrue: [ self parentTable parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> stringTokens [
	^ stringTokens
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> stringTokens: anOrderedCollection [
	stringTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> tableConstraint [
	^ tableConstraint
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> tableConstraint: aPsqlTableConstraintNode [
	self tableConstraint notNil ifTrue: [ self tableConstraint parent: nil ].
	tableConstraint := aPsqlTableConstraintNode.
	self tableConstraint notNil ifTrue: [ self tableConstraint parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> tokenVariables [
	^ #(#constraintName #triggerName #newOwner)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> triggerName [
	^ triggerName
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> triggerName: aSmaCCToken [
	triggerName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> type [
	^ type
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> type: aPsqlProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aPsqlProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
