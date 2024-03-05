Class {
	#name : #PsqlAlterSystemCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'configurationParameter',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterSystemCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterSystemCommand: self
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterSystemCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> tokenVariables [
	^ #(#configurationParameter)
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterSystemCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
