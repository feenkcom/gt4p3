Class {
	#name : #PsqlSecurityLabelCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'objectName',
		'stringLiteral',
		'columnName',
		'aggregateName',
		'aggregateSignature',
		'functionName',
		'argNames',
		'argTypes',
		'largeObjectOid',
		'procedureName',
		'routineName',
		'provider'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSecurityLabelCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSecurityLabelCommand: self
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> aggregateName [
	^ aggregateName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> aggregateName: aSmaCCToken [
	aggregateName := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> aggregateSignature [
	^ aggregateSignature
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> aggregateSignature: aPsqlAggregateSignatureNode [
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: nil ].
	aggregateSignature := aPsqlAggregateSignatureNode.
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: self ]
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlSecurityLabelCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> largeObjectOid [
	^ largeObjectOid
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> largeObjectOid: aPsqlExpressionNode [
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: nil ].
	largeObjectOid := aPsqlExpressionNode.
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: self ]
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> nodeVariables [
	^ #(#columnName #aggregateSignature #largeObjectOid)
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> objectName [
	^ objectName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> objectName: aSmaCCToken [
	objectName := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> procedureName [
	^ procedureName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> procedureName: aSmaCCToken [
	procedureName := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> provider [
	^ provider
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> provider: aSmaCCToken [
	provider := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> routineName [
	^ routineName
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> routineName: aSmaCCToken [
	routineName := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> stringLiteral [
	^ stringLiteral
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> stringLiteral: aSmaCCToken [
	stringLiteral := aSmaCCToken
]

{ #category : #generated }
PsqlSecurityLabelCommandNode >> tokenVariables [
	^ #(#objectName #stringLiteral #aggregateName #functionName #procedureName #routineName #provider)
]
