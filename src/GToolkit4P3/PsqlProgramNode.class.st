Class {
	#name : #PsqlProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
