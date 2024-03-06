Class {
	#name : #PsqlDoubleTypeExpressionNode,
	#superclass : #PsqlExpressionNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDoubleTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDoubleTypeExpression: self
]
