Class {
	#name : #PsqlCreateOperatorFamilyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'indexMethod'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateOperatorFamilyCommand: self
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateOperatorFamilyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateOperatorFamilyCommandNode >> tokenVariables [
	^ #(#indexMethod)
]
