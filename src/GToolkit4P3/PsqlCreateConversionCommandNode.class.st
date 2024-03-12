Class {
	#name : #PsqlCreateConversionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'sourceEncoding',
		'destEncoding',
		'functionName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateConversionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateConversionCommand: self
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> destEncoding [
	^ destEncoding
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> destEncoding: aSmaCCToken [
	destEncoding := aSmaCCToken
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> functionName: aPsqlQualifiedNameNode [
	self functionName notNil ifTrue: [ self functionName parent: nil ].
	functionName := aPsqlQualifiedNameNode.
	self functionName notNil ifTrue: [ self functionName parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCreateConversionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> nodeVariables [
	^ #(#name #functionName)
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> sourceEncoding [
	^ sourceEncoding
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> sourceEncoding: aSmaCCToken [
	sourceEncoding := aSmaCCToken
]

{ #category : #generated }
PsqlCreateConversionCommandNode >> tokenVariables [
	^ #(#sourceEncoding #destEncoding)
]
