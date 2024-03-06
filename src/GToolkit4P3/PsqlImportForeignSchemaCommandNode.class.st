Class {
	#name : #PsqlImportForeignSchemaCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'remoteSchema',
		'serverName',
		'localSchema',
		'options',
		'values',
		'tableNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportForeignSchemaCommand: self
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> compositeNodeVariables [
	^ #(#tableNames)
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> compositeTokenVariables [
	^ #(#_s #options #values)
]

{ #category : #'generated-initialize-release' }
PsqlImportForeignSchemaCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	tableNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> localSchema [
	^ localSchema
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> localSchema: aSmaCCToken [
	localSchema := aSmaCCToken
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> options [
	^ options
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> options: anOrderedCollection [
	options := anOrderedCollection
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> remoteSchema [
	^ remoteSchema
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> remoteSchema: aSmaCCToken [
	remoteSchema := aSmaCCToken
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> serverName [
	^ serverName
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> serverName: aSmaCCToken [
	serverName := aSmaCCToken
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> tokenVariables [
	^ #(#remoteSchema #serverName #localSchema)
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlImportForeignSchemaCommandNode >> values: anOrderedCollection [
	values := anOrderedCollection
]
