Class {
	#name : #PsqlIntervalExpressionNode,
	#superclass : #PsqlExpressionNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlIntervalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntervalExpression: self
]
