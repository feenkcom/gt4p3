Class {
	#name : #LePostgresqlSnippetElement,
	#superclass : #LeExternalEvaluatedSnippetElement,
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #initalization }
LePostgresqlSnippetElement >> initializeLanguageElement [
	^ super initializeLanguageElement
		text: 'PostgreSQL';
		yourself
]
