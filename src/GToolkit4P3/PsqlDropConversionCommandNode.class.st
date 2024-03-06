Class {
	#name : #PsqlDropConversionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropConversionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropConversionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropConversionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropConversionCommand: self
]

{ #category : #generated }
PsqlDropConversionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropConversionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropConversionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlDropConversionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlDropConversionCommandNode >> nodeVariables [
	^ #(#name)
]
