Class {
	#name : #PsqlDropTransformCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'typeName',
		'langName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropTransformCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropTransformCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropTransformCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropTransformCommand: self
]

{ #category : #generated }
PsqlDropTransformCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropTransformCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropTransformCommandNode >> langName [
	^ langName
]

{ #category : #generated }
PsqlDropTransformCommandNode >> langName: aSmaCCToken [
	langName := aSmaCCToken
]

{ #category : #generated }
PsqlDropTransformCommandNode >> tokenVariables [
	^ #(#typeName #langName)
]

{ #category : #generated }
PsqlDropTransformCommandNode >> typeName [
	^ typeName
]

{ #category : #generated }
PsqlDropTransformCommandNode >> typeName: aSmaCCToken [
	typeName := aSmaCCToken
]
