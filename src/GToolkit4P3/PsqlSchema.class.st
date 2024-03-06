Class {
	#name : #PsqlSchema,
	#superclass : #PsqlModel,
	#instVars : [
		'tables',
		'views'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlSchema >> addTable: aTable [
	self tables at: aTable name asLowercase put: aTable
]

{ #category : #accessing }
PsqlSchema >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Tables';
		items: [ tables asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Name' text: #name;
		column: '# Columns'
			text: [ :each | each columns size ]
			width: 75
]

{ #category : #accessing }
PsqlSchema >> initialize [
	super initialize.
	tables := Dictionary new.
	views := Dictionary new
]

{ #category : #accessing }
PsqlSchema >> tables [
	^ tables
]

{ #category : #accessing }
PsqlSchema >> tables: anObject [
	tables := anObject
]

{ #category : #accessing }
PsqlSchema >> views [
	^ views
]

{ #category : #accessing }
PsqlSchema >> views: anObject [
	views := anObject
]
