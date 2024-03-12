Class {
	#name : #LePostgresqlLoginSnippet,
	#superclass : #LeSnippet,
	#instVars : [
		'postgresqlUrl'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #'api - accessing menu' }
LePostgresqlLoginSnippet class >> contextMenuItemSpecification [
	<leSnippetSpecification>
	^ LeContextMenuItemSpecification new
		snippetClass: self;
		title: 'PostgreSQL login'
]

{ #category : #accessing }
LePostgresqlLoginSnippet class >> empty [
	^ self new
]

{ #category : #accessing }
LePostgresqlLoginSnippet class >> leJsonV4AttributeMapping [
	^ super leJsonV4AttributeMapping
		add: (#postgresqlUrlString -> #postgresqlUrl);
		yourself 
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
	^ self postgresqlUrl
		ifNotNil: [ self postgresqlUrlString ]
		ifNil: [ String new ]
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> postgresqlUrl [
	^ postgresqlUrl
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> postgresqlUrl: aPostgresqlUrl [
	aPostgresqlUrl ifNil: [ ^ postgresqlUrl := nil ].
	
	postgresqlUrl := aPostgresqlUrl asUrl
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> postgresqlUrlString [
	"We remove the password for our external representation"

	^ self postgresqlUrl
		ifNotNil: [ :url | 
			(url copy
				password: nil;
				yourself) asString ]
]

{ #category : #accessing }
LePostgresqlLoginSnippet >> postgresqlUrlString: aString [
	self postgresqlUrl: aString
]
