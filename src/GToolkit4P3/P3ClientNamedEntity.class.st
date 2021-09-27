Class {
	#name : 'P3ClientNamedEntity',
	#superclass : 'Object',
	#instVars : [
		'client',
		'name'
	],
	#category : 'GToolkit4P3'
}

{ #category : 'accessing' }
P3ClientNamedEntity >> client [
	^ client
]

{ #category : 'accessing' }
P3ClientNamedEntity >> client: anObject [
	client := anObject
]

{ #category : 'ui' }
P3ClientNamedEntity >> gtDisplayOn: aStream [
	aStream nextPutAll: self name 
]

{ #category : 'accessing' }
P3ClientNamedEntity >> name [
	^ name
]

{ #category : 'accessing' }
P3ClientNamedEntity >> name: anObject [
	name := anObject
]
