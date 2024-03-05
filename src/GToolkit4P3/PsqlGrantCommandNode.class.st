Class {
	#name : #PsqlGrantCommandNode,
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
		'routineNames',
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
PsqlGrantCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlGrantCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGrantCommand: self
]

{ #category : #generated }
PsqlGrantCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlGrantCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlGrantCommandNode >> argTypes: anOrderedCollection [
	argTypes := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlGrantCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlGrantCommandNode >> compositeNodeVariables [
	^ #(#tableNames #columnNames)
]

{ #category : #generated }
PsqlGrantCommandNode >> compositeTokenVariables [
	^ #(#_s #userNames #schemaNames #sequenceNames #databaseNames #domainNames #fdwNames #serverNames #routineNames #argNames #argTypes #langNames #loids #configurationParameters #tablespaceNames #typeNames #roleNames)
]

{ #category : #generated }
PsqlGrantCommandNode >> configurationParameters [
	^ configurationParameters
]

{ #category : #generated }
PsqlGrantCommandNode >> configurationParameters: anOrderedCollection [
	configurationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> databaseNames [
	^ databaseNames
]

{ #category : #generated }
PsqlGrantCommandNode >> databaseNames: anOrderedCollection [
	databaseNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> domainNames [
	^ domainNames
]

{ #category : #generated }
PsqlGrantCommandNode >> domainNames: anOrderedCollection [
	domainNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> fdwNames [
	^ fdwNames
]

{ #category : #generated }
PsqlGrantCommandNode >> fdwNames: anOrderedCollection [
	fdwNames := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlGrantCommandNode >> initialize [
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
	routineNames := OrderedCollection new: 2.
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
PsqlGrantCommandNode >> langNames [
	^ langNames
]

{ #category : #generated }
PsqlGrantCommandNode >> langNames: anOrderedCollection [
	langNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> loids [
	^ loids
]

{ #category : #generated }
PsqlGrantCommandNode >> loids: anOrderedCollection [
	loids := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlGrantCommandNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> routineNames [
	^ routineNames
]

{ #category : #generated }
PsqlGrantCommandNode >> routineNames: anOrderedCollection [
	routineNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> schemaNames [
	^ schemaNames
]

{ #category : #generated }
PsqlGrantCommandNode >> schemaNames: anOrderedCollection [
	schemaNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> sequenceNames [
	^ sequenceNames
]

{ #category : #generated }
PsqlGrantCommandNode >> sequenceNames: anOrderedCollection [
	sequenceNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> serverNames [
	^ serverNames
]

{ #category : #generated }
PsqlGrantCommandNode >> serverNames: anOrderedCollection [
	serverNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlGrantCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlGrantCommandNode >> tablespaceNames [
	^ tablespaceNames
]

{ #category : #generated }
PsqlGrantCommandNode >> tablespaceNames: anOrderedCollection [
	tablespaceNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> typeNames [
	^ typeNames
]

{ #category : #generated }
PsqlGrantCommandNode >> typeNames: anOrderedCollection [
	typeNames := anOrderedCollection
]

{ #category : #generated }
PsqlGrantCommandNode >> userNames [
	^ userNames
]

{ #category : #generated }
PsqlGrantCommandNode >> userNames: anOrderedCollection [
	userNames := anOrderedCollection
]
