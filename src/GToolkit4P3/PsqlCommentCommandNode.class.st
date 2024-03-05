Class {
	#name : #PsqlCommentCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'objectName',
		'stringLiteral',
		'aggregateName',
		'aggregateSignature',
		'sourceType',
		'targetType',
		'column',
		'constraintName',
		'tableName',
		'domainName',
		'functionName',
		'argNames',
		'argTypes',
		'largeObjectOid',
		'operatorName',
		'leftType',
		'rightType',
		'indexMethod',
		'policyName',
		'procedureName',
		'routineName',
		'ruleName',
		'typeName',
		'langName',
		'triggerName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCommentCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCommentCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCommentCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommentCommand: self
]

{ #category : #generated }
PsqlCommentCommandNode >> aggregateName [
	^ aggregateName
]

{ #category : #generated }
PsqlCommentCommandNode >> aggregateName: aSmaCCToken [
	aggregateName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> aggregateSignature [
	^ aggregateSignature
]

{ #category : #generated }
PsqlCommentCommandNode >> aggregateSignature: aPsqlAggregateSignatureNode [
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: nil ].
	aggregateSignature := aPsqlAggregateSignatureNode.
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: self ]
]

{ #category : #generated }
PsqlCommentCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlCommentCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlCommentCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlCommentCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlCommentCommandNode >> column [
	^ column
]

{ #category : #generated }
PsqlCommentCommandNode >> column: aPsqlQualifiedNameNode [
	self column notNil ifTrue: [ self column parent: nil ].
	column := aPsqlQualifiedNameNode.
	self column notNil ifTrue: [ self column parent: self ]
]

{ #category : #generated }
PsqlCommentCommandNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlCommentCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlCommentCommandNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlCommentCommandNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> domainName [
	^ domainName
]

{ #category : #generated }
PsqlCommentCommandNode >> domainName: aSmaCCToken [
	domainName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCommentCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlCommentCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCommentCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCommentCommandNode >> langName [
	^ langName
]

{ #category : #generated }
PsqlCommentCommandNode >> langName: aSmaCCToken [
	langName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> largeObjectOid [
	^ largeObjectOid
]

{ #category : #generated }
PsqlCommentCommandNode >> largeObjectOid: aPsqlExpressionNode [
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: nil ].
	largeObjectOid := aPsqlExpressionNode.
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: self ]
]

{ #category : #generated }
PsqlCommentCommandNode >> leftType [
	^ leftType
]

{ #category : #generated }
PsqlCommentCommandNode >> leftType: aSmaCCToken [
	leftType := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> nodeVariables [
	^ #(#aggregateSignature #column #tableName #largeObjectOid)
]

{ #category : #generated }
PsqlCommentCommandNode >> objectName [
	^ objectName
]

{ #category : #generated }
PsqlCommentCommandNode >> objectName: aSmaCCToken [
	objectName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> operatorName [
	^ operatorName
]

{ #category : #generated }
PsqlCommentCommandNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> policyName [
	^ policyName
]

{ #category : #generated }
PsqlCommentCommandNode >> policyName: aSmaCCToken [
	policyName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> procedureName [
	^ procedureName
]

{ #category : #generated }
PsqlCommentCommandNode >> procedureName: aSmaCCToken [
	procedureName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> rightType [
	^ rightType
]

{ #category : #generated }
PsqlCommentCommandNode >> rightType: aSmaCCToken [
	rightType := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> routineName [
	^ routineName
]

{ #category : #generated }
PsqlCommentCommandNode >> routineName: aSmaCCToken [
	routineName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> ruleName [
	^ ruleName
]

{ #category : #generated }
PsqlCommentCommandNode >> ruleName: aSmaCCToken [
	ruleName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> sourceType [
	^ sourceType
]

{ #category : #generated }
PsqlCommentCommandNode >> sourceType: aSmaCCToken [
	sourceType := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> stringLiteral [
	^ stringLiteral
]

{ #category : #generated }
PsqlCommentCommandNode >> stringLiteral: aSmaCCToken [
	stringLiteral := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCommentCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCommentCommandNode >> targetType [
	^ targetType
]

{ #category : #generated }
PsqlCommentCommandNode >> targetType: aSmaCCToken [
	targetType := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> tokenVariables [
	^ #(#objectName #stringLiteral #aggregateName #sourceType #targetType #constraintName #domainName #functionName #operatorName #leftType #rightType #indexMethod #policyName #procedureName #routineName #ruleName #typeName #langName #triggerName)
]

{ #category : #generated }
PsqlCommentCommandNode >> triggerName [
	^ triggerName
]

{ #category : #generated }
PsqlCommentCommandNode >> triggerName: aSmaCCToken [
	triggerName := aSmaCCToken
]

{ #category : #generated }
PsqlCommentCommandNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlCommentCommandNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]
