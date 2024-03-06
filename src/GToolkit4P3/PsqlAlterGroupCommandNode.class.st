Class {
	#name : #PsqlAlterGroupCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterGroupCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterGroupCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterGroupCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterGroupCommand: self
]

{ #category : #generated }
PsqlAlterGroupCommandNode >> compositeTokenVariables [
	^ #(#_s #userNames)
]

{ #category : #'generated-initialize-release' }
PsqlAlterGroupCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	userNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterGroupCommandNode >> userNames [
	^ userNames
]

{ #category : #generated }
PsqlAlterGroupCommandNode >> userNames: anOrderedCollection [
	userNames := anOrderedCollection
]
