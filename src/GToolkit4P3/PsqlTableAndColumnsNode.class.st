Class {
	#name : #PsqlTableAndColumnsNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'tableName',
		'_s',
		'columnNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlTableAndColumnsNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlTableAndColumnsNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlTableAndColumnsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTableAndColumns: self
]

{ #category : #generated }
PsqlTableAndColumnsNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlTableAndColumnsNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlTableAndColumnsNode >> compositeNodeVariables [
	^ #(#columnNames)
]

{ #category : #generated }
PsqlTableAndColumnsNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlTableAndColumnsNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlTableAndColumnsNode >> nodeVariables [
	^ #(#tableName)
]

{ #category : #generated }
PsqlTableAndColumnsNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlTableAndColumnsNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]
