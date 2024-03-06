Class {
	#name : #PsqlDropMaterializedViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropMaterializedViewCommand: self
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropMaterializedViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropMaterializedViewCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
