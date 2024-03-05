Class {
	#name : #PsqlDropOperatorFamilyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'indexMethod'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropOperatorFamilyCommand: self
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlDropOperatorFamilyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlDropOperatorFamilyCommandNode >> tokenVariables [
	^ #(#indexMethod)
]
