Class {
	#name : #PsqlScalarSubqueryExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'query'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlScalarSubqueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScalarSubqueryExpression: self
]

{ #category : #generated }
PsqlScalarSubqueryExpressionNode >> nodeVariables [
	^ #(#query)
]

{ #category : #generated }
PsqlScalarSubqueryExpressionNode >> query [
	^ query
]

{ #category : #generated }
PsqlScalarSubqueryExpressionNode >> query: aPsqlSelectCommandNode [
	self query notNil ifTrue: [ self query parent: nil ].
	query := aPsqlSelectCommandNode.
	self query notNil ifTrue: [ self query parent: self ]
]
