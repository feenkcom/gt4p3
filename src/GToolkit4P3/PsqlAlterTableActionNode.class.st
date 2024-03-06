Class {
	#name : #PsqlAlterTableActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'dataType',
		'collation',
		'columnConstraints',
		'using',
		'defaultValue',
		'sequenceOptions',
		'restarts',
		'statistics',
		'attributeOptionNames',
		'attributeOptionValues',
		'compressionMethod',
		'tableConstraint',
		'constraintName',
		'indexName',
		'triggerName',
		'rewriteRuleName',
		'newAccessMethod',
		'newTablespaceName',
		'storageParameters',
		'parentTable',
		'typeName',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTableActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTableActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTableAction: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> attributeOptionNames [
	^ attributeOptionNames
]

{ #category : #generated }
PsqlAlterTableActionNode >> attributeOptionNames: anOrderedCollection [
	attributeOptionNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableActionNode >> attributeOptionValues [
	^ attributeOptionValues
]

{ #category : #generated }
PsqlAlterTableActionNode >> attributeOptionValues: anOrderedCollection [
	self setParents: self attributeOptionValues to: nil.
	attributeOptionValues := anOrderedCollection.
	self setParents: self attributeOptionValues to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> collation [
	^ collation
]

{ #category : #generated }
PsqlAlterTableActionNode >> collation: aPsqlExpressionNode [
	self collation notNil ifTrue: [ self collation parent: nil ].
	collation := aPsqlExpressionNode.
	self collation notNil ifTrue: [ self collation parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> columnConstraints [
	^ columnConstraints
]

{ #category : #generated }
PsqlAlterTableActionNode >> columnConstraints: anOrderedCollection [
	self setParents: self columnConstraints to: nil.
	columnConstraints := anOrderedCollection.
	self setParents: self columnConstraints to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlAlterTableActionNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> compositeNodeVariables [
	^ #(#columnNames #columnConstraints #restarts #attributeOptionValues)
]

{ #category : #generated }
PsqlAlterTableActionNode >> compositeTokenVariables [
	^ #(#_s #sequenceOptions #attributeOptionNames)
]

{ #category : #generated }
PsqlAlterTableActionNode >> compressionMethod [
	^ compressionMethod
]

{ #category : #generated }
PsqlAlterTableActionNode >> compressionMethod: aSmaCCToken [
	compressionMethod := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlAlterTableActionNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlAlterTableActionNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> defaultValue [
	^ defaultValue
]

{ #category : #generated }
PsqlAlterTableActionNode >> defaultValue: aPsqlExpressionNode [
	self defaultValue notNil ifTrue: [ self defaultValue parent: nil ].
	defaultValue := aPsqlExpressionNode.
	self defaultValue notNil ifTrue: [ self defaultValue parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> indexName [
	^ indexName
]

{ #category : #generated }
PsqlAlterTableActionNode >> indexName: aSmaCCToken [
	indexName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterTableActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	columnConstraints := OrderedCollection new: 2.
	sequenceOptions := OrderedCollection new: 2.
	restarts := OrderedCollection new: 2.
	attributeOptionNames := OrderedCollection new: 2.
	attributeOptionValues := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTableActionNode >> newAccessMethod [
	^ newAccessMethod
]

{ #category : #generated }
PsqlAlterTableActionNode >> newAccessMethod: aSmaCCToken [
	newAccessMethod := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterTableActionNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterTableActionNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> nodeVariables [
	^ #(#dataType #collation #using #defaultValue #statistics #tableConstraint #parentTable)
]

{ #category : #generated }
PsqlAlterTableActionNode >> otherVariables [
	^ #(#storageParameters)
]

{ #category : #generated }
PsqlAlterTableActionNode >> parentTable [
	^ parentTable
]

{ #category : #generated }
PsqlAlterTableActionNode >> parentTable: aPsqlQualifiedNameNode [
	self parentTable notNil ifTrue: [ self parentTable parent: nil ].
	parentTable := aPsqlQualifiedNameNode.
	self parentTable notNil ifTrue: [ self parentTable parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> restarts [
	^ restarts
]

{ #category : #generated }
PsqlAlterTableActionNode >> restarts: anOrderedCollection [
	self setParents: self restarts to: nil.
	restarts := anOrderedCollection.
	self setParents: self restarts to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> rewriteRuleName [
	^ rewriteRuleName
]

{ #category : #generated }
PsqlAlterTableActionNode >> rewriteRuleName: aSmaCCToken [
	rewriteRuleName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> sequenceOptions [
	^ sequenceOptions
]

{ #category : #generated }
PsqlAlterTableActionNode >> sequenceOptions: anOrderedCollection [
	sequenceOptions := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableActionNode >> statistics [
	^ statistics
]

{ #category : #generated }
PsqlAlterTableActionNode >> statistics: aPsqlNumberNode [
	self statistics notNil ifTrue: [ self statistics parent: nil ].
	statistics := aPsqlNumberNode.
	self statistics notNil ifTrue: [ self statistics parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlAlterTableActionNode >> storageParameters: anOrderedCollection [
	self setParent: self storageParameters to: nil.
	storageParameters := anOrderedCollection.
	self setParent: self storageParameters to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> tableConstraint [
	^ tableConstraint
]

{ #category : #generated }
PsqlAlterTableActionNode >> tableConstraint: aPsqlTableConstraintNode [
	self tableConstraint notNil ifTrue: [ self tableConstraint parent: nil ].
	tableConstraint := aPsqlTableConstraintNode.
	self tableConstraint notNil ifTrue: [ self tableConstraint parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> tokenVariables [
	^ #(#compressionMethod #constraintName #indexName #triggerName #rewriteRuleName #newAccessMethod #newTablespaceName #typeName #newOwner)
]

{ #category : #generated }
PsqlAlterTableActionNode >> triggerName [
	^ triggerName
]

{ #category : #generated }
PsqlAlterTableActionNode >> triggerName: aSmaCCToken [
	triggerName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlAlterTableActionNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTableActionNode >> using [
	^ using
]

{ #category : #generated }
PsqlAlterTableActionNode >> using: aPsqlExpressionNode [
	self using notNil ifTrue: [ self using parent: nil ].
	using := aPsqlExpressionNode.
	self using notNil ifTrue: [ self using parent: self ]
]
