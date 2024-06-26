Class {
	#name : #LePostgresqlSnippetElement,
	#superclass : #LeExternalEvaluatedSnippetElement,
	#instVars : [
		'languageLabel',
		'dropdownHandleButton'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
LePostgresqlSnippetElement >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #initalization }
LePostgresqlSnippetElement >> initializeLanguageElement [
	| aptitude |
	aptitude := BrGlamorousWithDropdownAptitude
		handle: [
			dropdownHandleButton := BrButton new
				aptitude: BrGlamorousButtonRectangularAptitude + BrGlamorousButtonWithLabelAptitude - BrGlamorousButtonExteriorAptitude;
				label: languageElement label;
				beSmallSize ]
		content: [ | form |
			form := P3ClientLoginPane new.
			form loadFrom: self defaultConnection.
			form inspectAction: [ :_ :aButton |
				self phlow spawnObject: self defaultConnection.
				aButton fireEvent: BrDropdownHideWish new ].
			form asGtMagritteViewModel asElement padding: (BlInsets all: 10) ].
	languageElement := BrButton new
		aptitude: BrGlamorousButtonWithLabelAptitude + aptitude - BrGlamorousButtonExteriorAptitude;
		beSmallSize;
		yourself.
	self updateLanguageLabel.
	^ languageElement
]

{ #category : #private }
LePostgresqlSnippetElement >> onConnectionEstablishedClosed: anAnnouncement [
	self enqueueTask: (BlTaskAction new action: [ self updateLanguageLabel])
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
	languageElement label: label.
	dropdownHandleButton ifNotNil: [ dropdownHandleButton label: label ]
]
