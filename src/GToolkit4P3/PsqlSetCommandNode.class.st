Class {
	#name : #PsqlSetCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'configurationParameter',
		'value'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSetCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSetCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSetCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetCommand: self
]

{ #category : #generated }
PsqlSetCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlSetCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlSetCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlSetCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSetCommandNode >> otherVariables [
	^ #(#value)
]

{ #category : #generated }
PsqlSetCommandNode >> tokenVariables [
	^ #(#configurationParameter)
]

{ #category : #generated }
PsqlSetCommandNode >> value [
	^ value
]

{ #category : #generated }
PsqlSetCommandNode >> value: anObject [
	self setParent: self value to: nil.
	value := anObject.
	self setParent: self value to: self
]
