Class {
	#name : #PsqlAlterDomainCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'default',
		'constraint',
		'constraintName',
		'newConstraintName',
		'newOwner',
		'newName',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterDomainCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterDomainCommand: self
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> constraint [
	^ constraint
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> constraint: aPsqlDomainConstraintNode [
	self constraint notNil ifTrue: [ self constraint parent: nil ].
	constraint := aPsqlDomainConstraintNode.
	self constraint notNil ifTrue: [ self constraint parent: self ]
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> constraintName [
	^ constraintName
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> constraintName: aSmaCCToken [
	constraintName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> default [
	^ default
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> default: aPsqlExpressionNode [
	self default notNil ifTrue: [ self default parent: nil ].
	default := aPsqlExpressionNode.
	self default notNil ifTrue: [ self default parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterDomainCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newConstraintName [
	^ newConstraintName
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newConstraintName: aSmaCCToken [
	newConstraintName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> nodeVariables [
	^ #(#name #default #constraint)
]

{ #category : #generated }
PsqlAlterDomainCommandNode >> tokenVariables [
	^ #(#constraintName #newConstraintName #newOwner #newName #newSchemaName)
]
