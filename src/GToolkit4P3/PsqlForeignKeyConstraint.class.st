Class {
	#name : #PsqlForeignKeyConstraint,
	#superclass : #PsqlConstraint,
	#instVars : [
		'refTable',
		'refColumns'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlForeignKeyConstraint >> foreignKeyColumns [
	^ (self refColumns collect: #name) asArray
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> foreignKeyTable [
	^ self refTable name
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> install [
	super install.
	refTable ifNotNil: [ refTable addIncomingConstraint: self ]
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> isForeignKey [
	^ true
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> refColumns [
	^ refColumns
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> refColumns: aCollection [
	refColumns := aCollection
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> refTable [
	^ refTable
]

{ #category : #accessing }
PsqlForeignKeyConstraint >> refTable: anObject [
	refTable := anObject
]
