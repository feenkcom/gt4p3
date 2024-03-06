Class {
	#name : #PsqlCreateUserMappingCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName',
		'serverName',
		'options',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateUserMappingCommand: self
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> compositeTokenVariables [
	^ #(#_s #options #values)
]

{ #category : #'generated-initialize-release' }
PsqlCreateUserMappingCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> tokenVariables [
	^ #(#userName #serverName)
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateUserMappingCommandNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
