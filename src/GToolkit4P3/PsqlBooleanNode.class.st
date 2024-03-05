Class {
	#name : #PsqlBooleanNode,
	#superclass : #PsqlExpressionNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlBooleanNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBoolean: self
]
