Class {
	#name : #PsqlAlterTableActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnNames',
		'dataType',
		'collation',
		'checks',
		'defaultExpressions',
		'generationExpressions',
		'refTables',
		'refColumns',
		'referentialActions',
		'constraintNames',
		'using',
		'defaultValue',
		'sequenceOptions',
		'restarts',
		'statistics',
		'attributeOptionNames',
		'attributeOptionValues',
		'compressionMethod',
		'indexMethod',
		'exclude',
		'operatorTokens',
		'predicate',
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
PsqlAlterTableActionNode >> checks [
	^ checks
]

{ #category : #generated }
PsqlAlterTableActionNode >> checks: anOrderedCollection [
	self setParents: self checks to: nil.
	checks := anOrderedCollection.
	self setParents: self checks to: self
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
	^ #(#columnNames #checks #defaultExpressions #generationExpressions #refTables #referentialActions #restarts #attributeOptionValues)
]

{ #category : #generated }
PsqlAlterTableActionNode >> compositeTokenVariables [
	^ #(#_s #refColumns #constraintNames #sequenceOptions #attributeOptionNames #operatorTokens)
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
PsqlAlterTableActionNode >> constraintNames [
	^ constraintNames
]

{ #category : #generated }
PsqlAlterTableActionNode >> constraintNames: anOrderedCollection [
	constraintNames := anOrderedCollection
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
PsqlAlterTableActionNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlAlterTableActionNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
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
PsqlAlterTableActionNode >> exclude [
	^ exclude
]

{ #category : #generated }
PsqlAlterTableActionNode >> exclude: aPsqlExcludeElementNode [
	self exclude notNil ifTrue: [ self exclude parent: nil ].
	exclude := aPsqlExcludeElementNode.
	self exclude notNil ifTrue: [ self exclude parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> generationExpressions [
	^ generationExpressions
]

{ #category : #generated }
PsqlAlterTableActionNode >> generationExpressions: anOrderedCollection [
	self setParents: self generationExpressions to: nil.
	generationExpressions := anOrderedCollection.
	self setParents: self generationExpressions to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlAlterTableActionNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
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
	checks := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
	generationExpressions := OrderedCollection new: 2.
	refTables := OrderedCollection new: 2.
	refColumns := OrderedCollection new: 2.
	referentialActions := OrderedCollection new: 2.
	constraintNames := OrderedCollection new: 2.
	sequenceOptions := OrderedCollection new: 2.
	restarts := OrderedCollection new: 2.
	attributeOptionNames := OrderedCollection new: 2.
	attributeOptionValues := OrderedCollection new: 2.
	operatorTokens := OrderedCollection new: 2.
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
	^ #(#dataType #collation #using #defaultValue #statistics #exclude #predicate #parentTable)
]

{ #category : #generated }
PsqlAlterTableActionNode >> operatorTokens [
	^ operatorTokens
]

{ #category : #generated }
PsqlAlterTableActionNode >> operatorTokens: anOrderedCollection [
	operatorTokens := anOrderedCollection
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
PsqlAlterTableActionNode >> predicate [
	^ predicate
]

{ #category : #generated }
PsqlAlterTableActionNode >> predicate: aPsqlExpressionNode [
	self predicate notNil ifTrue: [ self predicate parent: nil ].
	predicate := aPsqlExpressionNode.
	self predicate notNil ifTrue: [ self predicate parent: self ]
]

{ #category : #generated }
PsqlAlterTableActionNode >> refColumns [
	^ refColumns
]

{ #category : #generated }
PsqlAlterTableActionNode >> refColumns: anOrderedCollection [
	refColumns := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTableActionNode >> refTables [
	^ refTables
]

{ #category : #generated }
PsqlAlterTableActionNode >> refTables: anOrderedCollection [
	self setParents: self refTables to: nil.
	refTables := anOrderedCollection.
	self setParents: self refTables to: self
]

{ #category : #generated }
PsqlAlterTableActionNode >> referentialActions [
	^ referentialActions
]

{ #category : #generated }
PsqlAlterTableActionNode >> referentialActions: anOrderedCollection [
	self setParents: self referentialActions to: nil.
	referentialActions := anOrderedCollection.
	self setParents: self referentialActions to: self
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
PsqlAlterTableActionNode >> tokenVariables [
	^ #(#compressionMethod #indexMethod #indexName #triggerName #rewriteRuleName #newAccessMethod #newTablespaceName #typeName #newOwner)
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
