Class {
	#name : #PsqlDropUserMappingCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'userName',
		'serverName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropUserMappingCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropUserMappingCommand: self
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropUserMappingCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> tokenVariables [
	^ #(#userName #serverName)
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlDropUserMappingCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]
