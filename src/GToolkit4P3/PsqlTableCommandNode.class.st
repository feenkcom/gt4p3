Class {
	#name : #PsqlTableCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_',
		'tableName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTableCommandNode >> _ [
	^ _
]

{ #category : #generated }
PsqlTableCommandNode >> _: aSmaCCToken [
	_ := aSmaCCToken
]

{ #category : #generated }
PsqlTableCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTableCommand: self
]

{ #category : #generated }
PsqlTableCommandNode >> nodeVariables [
	^ #(#tableName)
]

{ #category : #generated }
PsqlTableCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlTableCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlTableCommandNode >> tokenVariables [
	^ #(#_)
]
