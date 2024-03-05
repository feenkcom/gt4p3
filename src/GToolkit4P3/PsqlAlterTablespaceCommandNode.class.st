Class {
	#name : #PsqlAlterTablespaceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'newName',
		'newOwner',
		'tablespaceOptions',
		'values'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterTablespaceCommand: self
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> compositeTokenVariables [
	^ #(#_s #tablespaceOptions)
]

{ #category : #'generated-initialize-release' }
PsqlAlterTablespaceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tablespaceOptions := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> tablespaceOptions [
	^ tablespaceOptions
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> tablespaceOptions: anOrderedCollection [
	tablespaceOptions := anOrderedCollection
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> tokenVariables [
	^ #(#newName #newOwner)
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterTablespaceCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
