Class {
	#name : #PsqlDropOperatorClassCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'indexMethod'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropOperatorClassCommand: self
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlDropOperatorClassCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlDropOperatorClassCommandNode >> tokenVariables [
	^ #(#indexMethod)
]
