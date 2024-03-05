Class {
	#name : #PsqlAlterDefaultPrivilegesCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'schemaNames',
		'grantOrRevoke',
		'targetRoles'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterDefaultPrivilegesCommand: self
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> compositeTokenVariables [
	^ #(#_s #schemaNames #targetRoles)
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> grantOrRevoke [
	^ grantOrRevoke
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> grantOrRevoke: aPsqlAbbreviatedGrantOrRevokeNode [
	self grantOrRevoke notNil ifTrue: [ self grantOrRevoke parent: nil ].
	grantOrRevoke := aPsqlAbbreviatedGrantOrRevokeNode.
	self grantOrRevoke notNil ifTrue: [ self grantOrRevoke parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterDefaultPrivilegesCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	schemaNames := OrderedCollection new: 2.
	targetRoles := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> nodeVariables [
	^ #(#grantOrRevoke)
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> schemaNames [
	^ schemaNames
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> schemaNames: anOrderedCollection [
	schemaNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> targetRoles [
	^ targetRoles
]

{ #category : #generated }
PsqlAlterDefaultPrivilegesCommandNode >> targetRoles: anOrderedCollection [
	targetRoles := anOrderedCollection
]
