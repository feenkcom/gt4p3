Class {
	#name : #PsqlResetCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'configurationParameter'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlResetCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlResetCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlResetCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitResetCommand: self
]

{ #category : #generated }
PsqlResetCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlResetCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlResetCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlResetCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlResetCommandNode >> tokenVariables [
	^ #(#configurationParameter)
]
