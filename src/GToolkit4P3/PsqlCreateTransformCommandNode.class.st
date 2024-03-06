Class {
	#name : #PsqlCreateTransformCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'typeName',
		'langName',
		'fromSqlFunctionName',
		'toSqlFunctionName',
		'argumentTypes'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTransformCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTransformCommand: self
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> argumentTypes [
	^ argumentTypes
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> argumentTypes: anOrderedCollection [
	argumentTypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> compositeTokenVariables [
	^ #(#_s #argumentTypes)
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> fromSqlFunctionName [
	^ fromSqlFunctionName
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> fromSqlFunctionName: aSmaCCToken [
	fromSqlFunctionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateTransformCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argumentTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> langName [
	^ langName
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> langName: aSmaCCToken [
	langName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> toSqlFunctionName [
	^ toSqlFunctionName
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> toSqlFunctionName: aSmaCCToken [
	toSqlFunctionName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> tokenVariables [
	^ #(#typeName #langName #fromSqlFunctionName #toSqlFunctionName)
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlCreateTransformCommandNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]
