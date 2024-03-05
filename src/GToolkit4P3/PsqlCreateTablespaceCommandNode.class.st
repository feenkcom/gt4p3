Class {
	#name : #PsqlCreateTablespaceCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tablespaceName',
		'directory',
		'tablespaceOptions',
		'values',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTablespaceCommand: self
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> compositeTokenVariables [
	^ #(#_s #tablespaceOptions)
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> directory [
	^ directory
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> directory: aSmaCCToken [
	directory := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateTablespaceCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tablespaceOptions := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> tablespaceOptions [
	^ tablespaceOptions
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> tablespaceOptions: anOrderedCollection [
	tablespaceOptions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> tokenVariables [
	^ #(#tablespaceName #directory #newOwner)
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateTablespaceCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
