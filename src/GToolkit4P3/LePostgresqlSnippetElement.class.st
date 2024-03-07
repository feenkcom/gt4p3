Class {
	#name : #LePostgresqlSnippetElement,
	#superclass : #LeExternalEvaluatedSnippetElement,
	#instVars : [
		'languageLabel'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
LePostgresqlSnippetElement >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #initalization }
LePostgresqlSnippetElement >> initializeLanguageElement [
	languageElement := BrButton new
		aptitude: BrGlamorousButtonWithLabelAptitude - BrGlamorousButtonExteriorAptitude;
		action: [ :aButton | aButton phlow spawnObject: self defaultConnection ];
		beSmallSize;
		yourself.
	self updateLanguageLabel.
	^ languageElement
]

{ #category : #private }
LePostgresqlSnippetElement >> onConnectionEstablishedClosed: anAnnouncement [
	self inUIProcessDo: [ self updateLanguageLabel]
]

{ #category : #'api - snippet view model' }
LePostgresqlSnippetElement >> subscribeToSnippetViewModel [
	"Is sent after a new Snippet view model is assigned to the element.
	It is required to unsubscribe from the view model or domain model by implementing
	#unsubscribeFromSnippetViewModel if elements subscribe to them"
	
	super subscribeToSnippetViewModel.
	
	P3LogEvent announcer weak
		when: P3ConnectionEstablishedEvent , P3ConnectionClosedEvent
		send: #onConnectionEstablishedClosed:
		to: self
]

{ #category : #'api - snippet view model' }
LePostgresqlSnippetElement >> unsubscribeFromSnippetViewModel [
	"Is sent before a new Snippet view model is assigned to the element.
	Elements that subscribe to Snippet view model in domain model are required to implement this methods"
	
	super unsubscribeFromSnippetViewModel.
	
	P3LogEvent announcer unsubscribe: self
]

{ #category : #private }
LePostgresqlSnippetElement >> updateLanguageLabel [
	| p3Client label |
	p3Client := self defaultConnection.
	label := 'PostgreSQL'.
	p3Client isConnected
		ifTrue: [ label := label , ':' , p3Client session asString ].
	languageElement label: label
]
