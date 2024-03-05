Class {
	#name : #P3ClientTableEntity,
	#superclass : #P3ClientEntity,
	#instVars : [
		'table'
	],
	#category : #'GToolkit4P3-Model'
}

{ #category : #accessing }
P3ClientTableEntity >> client [
	^ self table client
]

{ #category : #accessing }
P3ClientTableEntity >> table [
	^ table
]

{ #category : #accessing }
P3ClientTableEntity >> table: anObject [
	table := anObject
]
