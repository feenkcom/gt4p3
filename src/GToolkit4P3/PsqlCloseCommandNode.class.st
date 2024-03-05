Class {
	#name : #PsqlCloseCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCloseCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCloseCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCloseCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCloseCommand: self
]

{ #category : #generated }
PsqlCloseCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlCloseCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCloseCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCloseCommandNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
PsqlCloseCommandNode >> tokenVariables [
	^ #(#name)
]
