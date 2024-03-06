Class {
	#name : #PsqlModel,
	#superclass : #Object,
	#instVars : [
		'name',
		'node'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlModel >> gtSourceFor: aView [
	<gtView>
	node isNil ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Source';
		object: [ node ];
		view: #gtSourceFor:
]

{ #category : #accessing }
PsqlModel >> name [
	^ name
]

{ #category : #accessing }
PsqlModel >> name: aString [
	name := aString
]

{ #category : #accessing }
PsqlModel >> node [
	^ node
]

{ #category : #accessing }
PsqlModel >> node: anObject [
	node := anObject
]
