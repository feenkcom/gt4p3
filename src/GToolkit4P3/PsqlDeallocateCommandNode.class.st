Class {
	#name : #PsqlDeallocateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDeallocateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDeallocateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDeallocateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeallocateCommand: self
]

{ #category : #generated }
PsqlDeallocateCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDeallocateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDeallocateCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDeallocateCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDeallocateCommandNode >> nodeVariables [
	^ #(#name)
]
