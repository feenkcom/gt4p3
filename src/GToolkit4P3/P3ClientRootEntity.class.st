Class {
	#name : #P3ClientRootEntity,
	#superclass : #P3ClientNamedEntity,
	#instVars : [
		'client'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientRootEntity >> client [
	^ client
]

{ #category : #accessing }
P3ClientRootEntity >> client: anObject [
	client := anObject
]
