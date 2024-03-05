Class {
	#name : #PsqlAlterUserMappingCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName',
		'serverName',
		'options',
		'stringTokens'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterUserMappingCommand: self
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> compositeTokenVariables [
	^ #(#_s #options #stringTokens)
]

{ #category : #'generated-initialize-release' }
PsqlAlterUserMappingCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	stringTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> stringTokens [
	^ stringTokens
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> stringTokens: anOrderedCollection [
	stringTokens := anOrderedCollection
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> tokenVariables [
	^ #(#userName #serverName)
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlAlterUserMappingCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]
