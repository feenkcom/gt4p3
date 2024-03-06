Class {
	#name : #PsqlAlterForeignDataWrapperCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'validatorFunction',
		'options',
		'stringTokens',
		'handlerFunction',
		'newOwner',
		'newName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterForeignDataWrapperCommand: self
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> compositeTokenVariables [
	^ #(#_s #options #stringTokens)
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> handlerFunction [
	^ handlerFunction
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> handlerFunction: aSmaCCToken [
	handlerFunction := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterForeignDataWrapperCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	stringTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> stringTokens [
	^ stringTokens
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> stringTokens: anOrderedCollection [
	stringTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> tokenVariables [
	^ #(#validatorFunction #handlerFunction #newOwner #newName)
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> validatorFunction [
	^ validatorFunction
]

{ #category : #generated }
PsqlAlterForeignDataWrapperCommandNode >> validatorFunction: aSmaCCToken [
	validatorFunction := aSmaCCToken
]
