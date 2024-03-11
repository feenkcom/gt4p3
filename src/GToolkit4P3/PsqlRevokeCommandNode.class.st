Class {
	#name : #PsqlRevokeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableNames',
		'userNames',
		'schemaNames',
		'columnNames',
		'sequenceNames',
		'databaseNames',
		'domainNames',
		'fdwNames',
		'serverNames',
		'functionNames',
		'argNames',
		'argTypes',
		'langNames',
		'loids',
		'configurationParameters',
		'tablespaceNames',
		'typeNames',
		'roleNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlRevokeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlRevokeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRevokeCommand: self
]

{ #category : #generated }
PsqlRevokeCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlRevokeCommandNode >> argTypes: anOrderedCollection [
	argTypes := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlRevokeCommandNode >> compositeNodeVariables [
	^ #(#tableNames #columnNames #functionNames)
]

{ #category : #generated }
PsqlRevokeCommandNode >> compositeTokenVariables [
	^ #(#_s #userNames #schemaNames #sequenceNames #databaseNames #domainNames #fdwNames #serverNames #argNames #argTypes #langNames #loids #configurationParameters #tablespaceNames #typeNames #roleNames)
]

{ #category : #generated }
PsqlRevokeCommandNode >> configurationParameters [
	^ configurationParameters
]

{ #category : #generated }
PsqlRevokeCommandNode >> configurationParameters: anOrderedCollection [
	configurationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> databaseNames [
	^ databaseNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> databaseNames: anOrderedCollection [
	databaseNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> domainNames [
	^ domainNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> domainNames: anOrderedCollection [
	domainNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> fdwNames [
	^ fdwNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> fdwNames: anOrderedCollection [
	fdwNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> functionNames: anOrderedCollection [
	self setParents: self functionNames to: nil.
	functionNames := anOrderedCollection.
	self setParents: self functionNames to: self
]

{ #category : #'generated-initialize-release' }
PsqlRevokeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tableNames := OrderedCollection new: 2.
	userNames := OrderedCollection new: 2.
	schemaNames := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	sequenceNames := OrderedCollection new: 2.
	databaseNames := OrderedCollection new: 2.
	domainNames := OrderedCollection new: 2.
	fdwNames := OrderedCollection new: 2.
	serverNames := OrderedCollection new: 2.
	functionNames := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	langNames := OrderedCollection new: 2.
	loids := OrderedCollection new: 2.
	configurationParameters := OrderedCollection new: 2.
	tablespaceNames := OrderedCollection new: 2.
	typeNames := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlRevokeCommandNode >> langNames [
	^ langNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> langNames: anOrderedCollection [
	langNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> loids [
	^ loids
]

{ #category : #generated }
PsqlRevokeCommandNode >> loids: anOrderedCollection [
	loids := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> schemaNames [
	^ schemaNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> schemaNames: anOrderedCollection [
	schemaNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> sequenceNames [
	^ sequenceNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> sequenceNames: anOrderedCollection [
	sequenceNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> serverNames [
	^ serverNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> serverNames: anOrderedCollection [
	serverNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlRevokeCommandNode >> tablespaceNames [
	^ tablespaceNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> tablespaceNames: anOrderedCollection [
	tablespaceNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> typeNames [
	^ typeNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> typeNames: anOrderedCollection [
	typeNames := anOrderedCollection
]

{ #category : #generated }
PsqlRevokeCommandNode >> userNames [
	^ userNames
]

{ #category : #generated }
PsqlRevokeCommandNode >> userNames: anOrderedCollection [
	userNames := anOrderedCollection
]
