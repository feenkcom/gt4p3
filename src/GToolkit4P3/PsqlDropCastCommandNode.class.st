Class {
	#name : #PsqlDropCastCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'sourceType',
		'targetType'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropCastCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropCastCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropCastCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropCastCommand: self
]

{ #category : #generated }
PsqlDropCastCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropCastCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropCastCommandNode >> sourceType [
	^ sourceType
]

{ #category : #generated }
PsqlDropCastCommandNode >> sourceType: aSmaCCToken [
	sourceType := aSmaCCToken
]

{ #category : #generated }
PsqlDropCastCommandNode >> targetType [
	^ targetType
]

{ #category : #generated }
PsqlDropCastCommandNode >> targetType: aSmaCCToken [
	targetType := aSmaCCToken
]

{ #category : #generated }
PsqlDropCastCommandNode >> tokenVariables [
	^ #(#sourceType #targetType)
]
