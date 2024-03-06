Class {
	#name : #PsqlAlterStatisticsCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newOwner',
		'newName',
		'newSchemaName',
		'newTarget'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterStatisticsCommand: self
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlAlterStatisticsCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newTarget [
	^ newTarget
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> newTarget: aPsqlNumberNode [
	self newTarget notNil ifTrue: [ self newTarget parent: nil ].
	newTarget := aPsqlNumberNode.
	self newTarget notNil ifTrue: [ self newTarget parent: self ]
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> nodeVariables [
	^ #(#name #newTarget)
]

{ #category : #generated }
PsqlAlterStatisticsCommandNode >> tokenVariables [
	^ #(#newOwner #newName #newSchemaName)
]
