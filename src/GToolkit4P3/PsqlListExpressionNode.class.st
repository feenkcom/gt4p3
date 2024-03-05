Class {
	#name : #PsqlListExpressionNode,
	#superclass : #PsqlExpressionNode,
	#instVars : [
		'items',
		'select'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlListExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitListExpression: self
]

{ #category : #generated }
PsqlListExpressionNode >> compositeNodeVariables [
	^ #(#items)
]

{ #category : #'generated-initialize-release' }
PsqlListExpressionNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlListExpressionNode >> items [
	^ items
]

{ #category : #generated }
PsqlListExpressionNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
PsqlListExpressionNode >> nodeVariables [
	^ #(#select)
]

{ #category : #generated }
PsqlListExpressionNode >> select [
	^ select
]

{ #category : #generated }
PsqlListExpressionNode >> select: aPsqlSelectCommandNode [
	self select notNil ifTrue: [ self select parent: nil ].
	select := aPsqlSelectCommandNode.
	self select notNil ifTrue: [ self select parent: self ]
]
