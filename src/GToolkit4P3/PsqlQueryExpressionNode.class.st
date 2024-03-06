Class {
	#name : #PsqlQueryExpressionNode,
	#superclass : #PsqlExpressionNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlQueryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQueryExpression: self
]
