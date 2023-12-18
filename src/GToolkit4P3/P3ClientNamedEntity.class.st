Class {
	#name : #P3ClientNamedEntity,
	#superclass : #P3ClientEntity,
	#instVars : [
		'name'
	],
	#category : #GToolkit4P3
}

{ #category : #ui }
P3ClientNamedEntity >> gtDisplayOn: aStream [
	aStream nextPutAll: self name 
]

{ #category : #accessing }
P3ClientNamedEntity >> name [
	^ name
]

{ #category : #accessing }
P3ClientNamedEntity >> name: anObject [
	name := anObject
]
