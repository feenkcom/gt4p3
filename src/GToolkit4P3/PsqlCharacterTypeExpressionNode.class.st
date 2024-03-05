Class {
	#name : #PsqlCharacterTypeExpressionNode,
	#superclass : #PsqlExpressionNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCharacterTypeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacterTypeExpression: self
]
