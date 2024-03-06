Class {
	#name : #LePostgresqlLoginSnippet,
	#superclass : #LeSnippet,
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #'api - accessing menu' }
LePostgresqlLoginSnippet class >> contextMenuItemSpecification [
	<leSnippetSpecification>
	^ LeContextMenuItemSpecification new
		snippetClass: self;
		title: 'PostgreSQL Login'
]

{ #category : #accessing }
LePostgresqlLoginSnippet class >> empty [
	^ self new
]

{ #category : #accessing }
LePostgresqlLoginSnippet class >> leJsonV4Name [
	^ 'postgresqlLoginSnippet'
]

{ #category : #converting }
LePostgresqlLoginSnippet >> asSnippetViewModel [
	<return: #LeSnippetViewModel>
	^ LePostgresqlLoginViewModel new snippetModel: self
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> contentAsString [
	^ String new
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]
