Class {
	#name : #PsqlMemberObjectNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'objectName',
		'aggregateName',
		'aggregateSignature',
		'sourceType',
		'targetType',
		'functionName',
		'argNames',
		'argTypes',
		'operatorName',
		'leftType',
		'rightType',
		'indexMethod',
		'procedureName',
		'routineName',
		'typeName',
		'langName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlMemberObjectNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlMemberObjectNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlMemberObjectNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberObject: self
]

{ #category : #generated }
PsqlMemberObjectNode >> aggregateName [
	^ aggregateName
]

{ #category : #generated }
PsqlMemberObjectNode >> aggregateName: aSmaCCToken [
	aggregateName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> aggregateSignature [
	^ aggregateSignature
]

{ #category : #generated }
PsqlMemberObjectNode >> aggregateSignature: aPsqlAggregateSignatureNode [
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: nil ].
	aggregateSignature := aPsqlAggregateSignatureNode.
	self aggregateSignature notNil ifTrue: [ self aggregateSignature parent: self ]
]

{ #category : #generated }
PsqlMemberObjectNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlMemberObjectNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlMemberObjectNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlMemberObjectNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlMemberObjectNode >> compositeNodeVariables [
	^ #(#argTypes)
]

{ #category : #generated }
PsqlMemberObjectNode >> compositeTokenVariables [
	^ #(#_s #argNames)
]

{ #category : #generated }
PsqlMemberObjectNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlMemberObjectNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlMemberObjectNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlMemberObjectNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlMemberObjectNode >> langName [
	^ langName
]

{ #category : #generated }
PsqlMemberObjectNode >> langName: aSmaCCToken [
	langName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> leftType [
	^ leftType
]

{ #category : #generated }
PsqlMemberObjectNode >> leftType: aSmaCCToken [
	leftType := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> nodeVariables [
	^ #(#aggregateSignature)
]

{ #category : #generated }
PsqlMemberObjectNode >> objectName [
	^ objectName
]

{ #category : #generated }
PsqlMemberObjectNode >> objectName: aSmaCCToken [
	objectName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> operatorName [
	^ operatorName
]

{ #category : #generated }
PsqlMemberObjectNode >> operatorName: aSmaCCToken [
	operatorName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> procedureName [
	^ procedureName
]

{ #category : #generated }
PsqlMemberObjectNode >> procedureName: aSmaCCToken [
	procedureName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> rightType [
	^ rightType
]

{ #category : #generated }
PsqlMemberObjectNode >> rightType: aSmaCCToken [
	rightType := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> routineName [
	^ routineName
]

{ #category : #generated }
PsqlMemberObjectNode >> routineName: aSmaCCToken [
	routineName := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> sourceType [
	^ sourceType
]

{ #category : #generated }
PsqlMemberObjectNode >> sourceType: aSmaCCToken [
	sourceType := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> targetType [
	^ targetType
]

{ #category : #generated }
PsqlMemberObjectNode >> targetType: aSmaCCToken [
	targetType := aSmaCCToken
]

{ #category : #generated }
PsqlMemberObjectNode >> tokenVariables [
	^ #(#objectName #aggregateName #sourceType #targetType #functionName #operatorName #leftType #rightType #indexMethod #procedureName #routineName #typeName #langName)
]

{ #category : #generated }
PsqlMemberObjectNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlMemberObjectNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]
