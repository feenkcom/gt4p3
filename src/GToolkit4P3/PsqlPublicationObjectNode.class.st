Class {
	#name : #PsqlPublicationObjectNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'tableName',
		'columnNames',
		'wheres',
		'schemaNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlPublicationObjectNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlPublicationObjectNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlPublicationObjectNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPublicationObject: self
]

{ #category : #generated }
PsqlPublicationObjectNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlPublicationObjectNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlPublicationObjectNode >> compositeNodeVariables [
	^ #(#columnNames #wheres)
]

{ #category : #generated }
PsqlPublicationObjectNode >> compositeTokenVariables [
	^ #(#_s #schemaNames)
]

{ #category : #'generated-initialize-release' }
PsqlPublicationObjectNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	wheres := OrderedCollection new: 2.
	schemaNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlPublicationObjectNode >> nodeVariables [
	^ #(#tableName)
]

{ #category : #generated }
PsqlPublicationObjectNode >> schemaNames [
	^ schemaNames
]

{ #category : #generated }
PsqlPublicationObjectNode >> schemaNames: anOrderedCollection [
	schemaNames := anOrderedCollection
]

{ #category : #generated }
PsqlPublicationObjectNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlPublicationObjectNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlPublicationObjectNode >> wheres [
	^ wheres
]

{ #category : #generated }
PsqlPublicationObjectNode >> wheres: anOrderedCollection [
	self setParents: self wheres to: nil.
	wheres := anOrderedCollection.
	self setParents: self wheres to: self
]
