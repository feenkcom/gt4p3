Class {
	#name : #PsqlAlterLargeObjectCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'largeObjectOid',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterLargeObjectCommand: self
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterLargeObjectCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> largeObjectOid [
	^ largeObjectOid
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> largeObjectOid: aPsqlExpressionNode [
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: nil ].
	largeObjectOid := aPsqlExpressionNode.
	self largeObjectOid notNil ifTrue: [ self largeObjectOid parent: self ]
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> nodeVariables [
	^ #(#largeObjectOid)
]

{ #category : #generated }
PsqlAlterLargeObjectCommandNode >> tokenVariables [
	^ #(#newOwner)
]
