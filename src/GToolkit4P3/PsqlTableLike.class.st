Class {
	#name : #PsqlTableLike,
	#superclass : #PsqlModel,
	#instVars : [
		'columns',
		'schema'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlTableLike >> addColumn: aColumn [
	self columns add: aColumn
]

{ #category : #accessing }
PsqlTableLike >> columnNamed: aString [
	| columnName |
	columnName := aString.
	(columnName beginsWith: '"')
		ifTrue: [ columnName := columnName allButFirst allButLast copyReplaceAll: '""' with: '"' ].
	^ self columns detect: [ :each | each name sameAs: columnName ] ifNone: [  ]
]

{ #category : #accessing }
PsqlTableLike >> columns [
	^ columns ifNil: [ columns := OrderedCollection new ]
]

{ #category : #accessing }
PsqlTableLike >> columns: anObject [
	columns := anObject
]

{ #category : #accessing }
PsqlTableLike >> constraints [
	^ #()
]

{ #category : #accessing }
PsqlTableLike >> schema [
	^ schema
]

{ #category : #accessing }
PsqlTableLike >> schema: anObject [
	schema := anObject
]
