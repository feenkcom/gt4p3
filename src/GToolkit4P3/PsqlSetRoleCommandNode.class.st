Class {
	#name : #PsqlSetRoleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'roleName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSetRoleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSetRoleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSetRoleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetRoleCommand: self
]

{ #category : #generated }
PsqlSetRoleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlSetRoleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSetRoleCommandNode >> roleName [
	^ roleName
]

{ #category : #generated }
PsqlSetRoleCommandNode >> roleName: aSmaCCToken [
	roleName := aSmaCCToken
]

{ #category : #generated }
PsqlSetRoleCommandNode >> tokenVariables [
	^ #(#roleName)
]
