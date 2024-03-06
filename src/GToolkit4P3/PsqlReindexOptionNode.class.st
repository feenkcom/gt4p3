Class {
	#name : #PsqlReindexOptionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_',
		'boolean',
		'newTablespaceName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlReindexOptionNode >> _ [
	^ _
]

{ #category : #generated }
PsqlReindexOptionNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlReindexOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReindexOption: self
]

{ #category : #generated }
PsqlReindexOptionNode >> boolean [
	^ boolean
]

{ #category : #generated }
PsqlReindexOptionNode >> boolean: aPsqlBooleanNode [
	self boolean notNil ifTrue: [ self boolean parent: nil ].
	boolean := aPsqlBooleanNode.
	self boolean notNil ifTrue: [ self boolean parent: self ]
]

{ #category : #generated }
PsqlReindexOptionNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlReindexOptionNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlReindexOptionNode >> nodeVariables [
	^ #(#boolean)
]

{ #category : #generated }
PsqlReindexOptionNode >> tokenVariables [
	^ #(#_ #newTablespaceName)
]
