Class {
	#name : #PsqlCreateTableLikeConstraintNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'sourceTable'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTableLikeConstraint: self
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCreateTableLikeConstraintNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> nodeVariables [
	^ #(#sourceTable)
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> sourceTable [
	^ sourceTable
]

{ #category : #generated }
PsqlCreateTableLikeConstraintNode >> sourceTable: aPsqlQualifiedNameNode [
	self sourceTable notNil ifTrue: [ self sourceTable parent: nil ].
	sourceTable := aPsqlQualifiedNameNode.
	self sourceTable notNil ifTrue: [ self sourceTable parent: self ]
]
