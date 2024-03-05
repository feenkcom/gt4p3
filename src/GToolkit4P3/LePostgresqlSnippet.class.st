Class {
	#name : #LePostgresqlSnippet,
	#superclass : #LeCodeSnippet,
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #'api - accessing menu' }
LePostgresqlSnippet class >> contextMenuItemSpecification [
	<leSnippetSpecification>
	^ LeContextMenuItemSpecification new
		snippetClass: self;
		title: 'PostgreSQL'
]

{ #category : #accessing }
LePostgresqlSnippet class >> leJsonV4Name [
	^ 'postgresqlSnippet'
]

{ #category : #converting }
LePostgresqlSnippet >> asSnippetViewModel [
	<return: #LeSnippetViewModel>
	^ LePostgresqlSnippetViewModel new snippetModel: self
]

{ #category : #initalization }
LePostgresqlSnippet >> newCoder [
	^ GtPostgreSQLSourceCoder new
]
