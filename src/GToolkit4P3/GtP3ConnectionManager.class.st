Class {
	#name : #GtP3ConnectionManager,
	#superclass : #Object,
	#instVars : [
		'default'
	],
	#classVars : [
		'uniqueInstance'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
GtP3ConnectionManager class >> uniqueInstance [
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #accessing }
GtP3ConnectionManager >> defaultConnection [
	^ default
		ifNil: [ default := P3Client url: 'postgresql://user:password@host:5432/database' asUrl ]
]
