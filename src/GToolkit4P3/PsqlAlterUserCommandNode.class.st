Class {
	#name : #PsqlAlterUserCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName',
		'values',
		'pASSWORDTokens',
		'passwords',
		'uNTILTokens',
		'timestamps',
		'name',
		'newName',
		'configurationParameter',
		'databaseName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterUserCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterUserCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterUserCommand: self
]

{ #category : #generated }
PsqlAlterUserCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterUserCommandNode >> compositeTokenVariables [
	^ #(#_s #pASSWORDTokens #passwords #uNTILTokens #timestamps)
]

{ #category : #generated }
PsqlAlterUserCommandNode >> configurationParameter [
	^ configurationParameter
]

{ #category : #generated }
PsqlAlterUserCommandNode >> configurationParameter: aSmaCCToken [
	configurationParameter := aSmaCCToken
]

{ #category : #generated }
PsqlAlterUserCommandNode >> databaseName [
	^ databaseName
]

{ #category : #generated }
PsqlAlterUserCommandNode >> databaseName: aSmaCCToken [
	databaseName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterUserCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	pASSWORDTokens := OrderedCollection new: 2.
	passwords := OrderedCollection new: 2.
	uNTILTokens := OrderedCollection new: 2.
	timestamps := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterUserCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterUserCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterUserCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterUserCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterUserCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterUserCommandNode >> pASSWORDTokens [
	^ pASSWORDTokens
]

{ #category : #generated }
PsqlAlterUserCommandNode >> pASSWORDTokens: anOrderedCollection [
	pASSWORDTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserCommandNode >> passwords [
	^ passwords
]

{ #category : #generated }
PsqlAlterUserCommandNode >> passwords: anOrderedCollection [
	passwords := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserCommandNode >> timestamps [
	^ timestamps
]

{ #category : #generated }
PsqlAlterUserCommandNode >> timestamps: anOrderedCollection [
	timestamps := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserCommandNode >> tokenVariables [
	^ #(#userName #newName #configurationParameter #databaseName)
]

{ #category : #generated }
PsqlAlterUserCommandNode >> uNTILTokens [
	^ uNTILTokens
]

{ #category : #generated }
PsqlAlterUserCommandNode >> uNTILTokens: anOrderedCollection [
	uNTILTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlAlterUserCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterUserCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterUserCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
