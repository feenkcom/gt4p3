Class {
	#name : #LePostgresqlLoginViewModel,
	#superclass : #LeSnippetViewModel,
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
LePostgresqlLoginViewModel >> postgresqlUrl [
	^ self snippetModel postgresqlUrl
]

{ #category : #accessing }
LePostgresqlLoginViewModel >> postgresqlUrl: aPostgresqlUrl [
	self snippetModel postgresqlUrl: aPostgresqlUrl
]

{ #category : #accessing }
LePostgresqlLoginViewModel >> snippetElementClass [
	^ LePostgresqlLoginSnippetElement
]
