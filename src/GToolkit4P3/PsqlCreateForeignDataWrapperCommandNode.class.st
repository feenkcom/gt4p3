Class {
	#name : #PsqlCreateForeignDataWrapperCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'validatorFunction',
		'options',
		'values',
		'handlerFunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateForeignDataWrapperCommand: self
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> compositeTokenVariables [
	^ #(#_s #options #values)
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> handlerFunction [
	^ handlerFunction
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> handlerFunction: aSmaCCToken [
	handlerFunction := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateForeignDataWrapperCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> tokenVariables [
	^ #(#validatorFunction #handlerFunction)
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> validatorFunction [
	^ validatorFunction
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> validatorFunction: aSmaCCToken [
	validatorFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateForeignDataWrapperCommandNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
