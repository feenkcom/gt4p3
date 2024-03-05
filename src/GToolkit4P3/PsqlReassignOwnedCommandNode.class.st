Class {
	#name : #PsqlReassignOwnedCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'oldRoles',
		'newRole'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlReassignOwnedCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReassignOwnedCommand: self
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> compositeTokenVariables [
	^ #(#_s #oldRoles)
]

{ #category : #'generated-initialize-release' }
PsqlReassignOwnedCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	oldRoles := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> newRole [
	^ newRole
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> newRole: aSmaCCToken [
	newRole := aSmaCCToken
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> oldRoles [
	^ oldRoles
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> oldRoles: anOrderedCollection [
	oldRoles := anOrderedCollection
]

{ #category : #generated }
PsqlReassignOwnedCommandNode >> tokenVariables [
	^ #(#newRole)
]
