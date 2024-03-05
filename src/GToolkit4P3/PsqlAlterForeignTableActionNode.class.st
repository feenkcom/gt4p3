Class {
	#name : #PsqlAlterForeignTableActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'type',
		'checks',
		'refTables',
		'defaultExpressions',
		'generationExpressions',
		'refColumns',
		'referentialActions',
		'constraintNames',
		'collation',
		'dataType',
		'integer',
		'attributeOptionNames',
		'values',
		'options',
		'stringTokens',
		'indexMethod',
		'exclude',
		'operatorTokens',
		'predicate',
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
PsqlAlterForeignTableActionNode >> checks [
	^ checks
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> checks: anOrderedCollection [
	self setParents: self checks to: nil.
	checks := anOrderedCollection.
	self setParents: self checks to: self
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
PsqlAlterForeignTableActionNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> compositeNodeVariables [
	^ #(#columnNames #checks #refTables #defaultExpressions #generationExpressions #referentialActions #values)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> compositeTokenVariables [
	^ #(#_s #refColumns #constraintNames #attributeOptionNames #options #stringTokens #operatorTokens)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> constraintNames [
	^ constraintNames
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> constraintNames: anOrderedCollection [
	constraintNames := anOrderedCollection
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
PsqlAlterForeignTableActionNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> exclude [
	^ exclude
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> exclude: aPsqlExcludeElementNode [
	self exclude notNil ifTrue: [ self exclude parent: nil ].
	exclude := aPsqlExcludeElementNode.
	self exclude notNil ifTrue: [ self exclude parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> generationExpressions [
	^ generationExpressions
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> generationExpressions: anOrderedCollection [
	self setParents: self generationExpressions to: nil.
	generationExpressions := anOrderedCollection.
	self setParents: self generationExpressions to: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterForeignTableActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	checks := OrderedCollection new: 2.
	refTables := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
	generationExpressions := OrderedCollection new: 2.
	refColumns := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
	constraintNames := OrderedCollection new: 2.
	attributeOptionNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	stringTokens := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
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
	^ #(#type #collation #dataType #integer #exclude #predicate #parentTable)
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
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
PsqlAlterForeignTableActionNode >> predicate [
	^ predicate
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> predicate: aPsqlExpressionNode [
	self predicate notNil ifTrue: [ self predicate parent: nil ].
	predicate := aPsqlExpressionNode.
	self predicate notNil ifTrue: [ self predicate parent: self ]
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> refColumns [
	^ refColumns
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> refColumns: anOrderedCollection [
	refColumns := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> refTables [
	^ refTables
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> refTables: anOrderedCollection [
	self setParents: self refTables to: nil.
	refTables := anOrderedCollection.
	self setParents: self refTables to: self
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlAlterForeignTableActionNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
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
PsqlAlterForeignTableActionNode >> tokenVariables [
	^ #(#indexMethod #triggerName #newOwner)
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
