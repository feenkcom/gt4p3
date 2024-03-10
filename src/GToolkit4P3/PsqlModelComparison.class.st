Class {
	#name : #PsqlModelComparison,
	#superclass : #Object,
	#instVars : [
		'databaseObject',
		'scriptObject'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlModelComparison class >> compareScript: aScriptObject toDatabase: dbObject [
	^ self new
		scriptObject: aScriptObject;
		databaseObject: dbObject;
		yourself
]

{ #category : #accessing }
PsqlModelComparison >> databaseObject [
	^ databaseObject
]

{ #category : #accessing }
PsqlModelComparison >> databaseObject: anObject [
	databaseObject := anObject
]

{ #category : #accessing }
PsqlModelComparison >> gtSourceFor: aView [
	<gtView>
	(scriptObject isNil or: [ scriptObject node isNil ]) ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Script source';
		object: [ scriptObject ];
		view: #gtSourceFor:
]

{ #category : #testing }
PsqlModelComparison >> isMissingFromDatabase [
	^ databaseObject isNil
]

{ #category : #testing }
PsqlModelComparison >> isMissingFromScripts [
	^ scriptObject isNil
]

{ #category : #accessing }
PsqlModelComparison >> isModified [
	^ self subclassResponsibility
]

{ #category : #accessing }
PsqlModelComparison >> name [
	^ (databaseObject ifNotNil: [ databaseObject name ])
		ifNil: [ scriptObject ifNotNil: [ scriptObject name ] ]
]

{ #category : #accessing }
PsqlModelComparison >> script: aScriptObject database: dbObject [
	self scriptObject: aScriptObject.
	self databaseObject: dbObject
]

{ #category : #accessing }
PsqlModelComparison >> scriptObject [
	^ scriptObject
]

{ #category : #accessing }
PsqlModelComparison >> scriptObject: anObject [
	scriptObject := anObject
]
