Class {
	#name : #PsqlQualifiedNameNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'name',
		'schema'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlQualifiedNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQualifiedName: self
]

{ #category : #generated }
PsqlQualifiedNameNode >> name [
	^ name
]

{ #category : #generated }
PsqlQualifiedNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
PsqlQualifiedNameNode >> schema [
	^ schema
]

{ #category : #generated }
PsqlQualifiedNameNode >> schema: aSmaCCToken [
	schema := aSmaCCToken
]

{ #category : #generated }
PsqlQualifiedNameNode >> tokenVariables [
	^ #(#name #schema)
]
