Class {
	#name : #PsqlRefreshMaterializedViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRefreshMaterializedViewCommand: self
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlRefreshMaterializedViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlRefreshMaterializedViewCommandNode >> nodeVariables [
	^ #(#name)
]
