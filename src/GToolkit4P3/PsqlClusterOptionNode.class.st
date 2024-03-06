Class {
	#name : #PsqlClusterOptionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlClusterOptionNode >> _ [
	^ _
]

{ #category : #generated }
PsqlClusterOptionNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlClusterOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClusterOption: self
]

{ #category : #generated }
PsqlClusterOptionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlClusterOptionNode >> tokenVariables [
	^ #(#_)
]

{ #category : #generated }
PsqlClusterOptionNode >> value [
	^ value
]

{ #category : #generated }
PsqlClusterOptionNode >> value: aPsqlBooleanNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPsqlBooleanNode.
	self value notNil ifTrue: [ self value parent: self ]
]
