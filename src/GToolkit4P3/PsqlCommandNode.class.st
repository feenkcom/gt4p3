Class {
	#name : #PsqlCommandNode,
	#superclass : #PsqlProgramNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommand: self
]
