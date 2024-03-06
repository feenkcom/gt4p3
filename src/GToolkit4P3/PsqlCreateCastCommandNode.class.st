Class {
	#name : #PsqlCreateCastCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'sourceType',
		'targetType',
		'functionName',
		'argumentTypes'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateCastCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateCastCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCastCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateCastCommand: self
]

{ #category : #generated }
PsqlCreateCastCommandNode >> argumentTypes [
	^ argumentTypes
]

{ #category : #generated }
PsqlCreateCastCommandNode >> argumentTypes: anOrderedCollection [
	argumentTypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateCastCommandNode >> compositeTokenVariables [
	^ #(#_s #argumentTypes)
]

{ #category : #generated }
PsqlCreateCastCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCreateCastCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateCastCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	argumentTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateCastCommandNode >> sourceType [
	^ sourceType
]

{ #category : #generated }
PsqlCreateCastCommandNode >> sourceType: aSmaCCToken [
	sourceType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCastCommandNode >> targetType [
	^ targetType
]

{ #category : #generated }
PsqlCreateCastCommandNode >> targetType: aSmaCCToken [
	targetType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateCastCommandNode >> tokenVariables [
	^ #(#sourceType #targetType #functionName)
]
