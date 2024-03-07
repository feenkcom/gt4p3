Class {
	#name : #LePostgresqlLoginSnippetElement,
	#superclass : #LeSnippetElement,
	#instVars : [
		'contentElement',
		'indicatorElement'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #initiailize }
LePostgresqlLoginSnippetElement >> initialize [
	| form formElement |
	super initialize.

	form := P3ClientLoginPane new.
	form loadFrom: self defaultConnection.
	formElement := form asGtMagritteViewModel asElement margin: (BlInsets all: 10).
	formElement constraintsDo: [ :c |
		c frame horizontal alignLeft.
		c frame vertical alignTop ].
	formElement
		hFitContent.

	indicatorElement := BrButton new
		aptitude: BrGlamorousButtonWithLabelAptitude - BrGlamorousButtonExteriorAptitude;
		label: 'PostgreSQL Login';
		action: [ :aButton | aButton phlow spawnObject: self defaultConnection ];
		beSmallSize;
		margin: (BlInsets top: 5 right: 5);
		yourself.
	indicatorElement constraintsDo: [ :c |
		c frame horizontal alignRight.
		c frame vertical alignTop ].

	contentElement := BrFrame new
		hMatchParent;
		vFitContent;
		addChildren: { formElement. indicatorElement }
]

{ #category : #private }
LePostgresqlLoginSnippetElement >> onConnectionEstablishedClosed: anAnnouncement [
	self inUIProcessDo: [ self updateIndicatorLabel]
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetContent [
	^ contentElement
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetToolbar [
	^ nil
]

{ #category : #'api - snippet view model' }
LePostgresqlLoginSnippetElement >> subscribeToSnippetViewModel [
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
LePostgresqlLoginSnippetElement >> unsubscribeFromSnippetViewModel [
	"Is sent before a new Snippet view model is assigned to the element.
	Elements that subscribe to Snippet view model in domain model are required to implement this methods"
	
	super unsubscribeFromSnippetViewModel.
	
	P3LogEvent announcer unsubscribe: self
]

{ #category : #private }
LePostgresqlLoginSnippetElement >> updateIndicatorLabel [
	| p3Client label |
	p3Client := self defaultConnection.
	label := 'PostgreSQL'.
	label := p3Client isConnected
		ifTrue: [ label , ':' , p3Client session asString ]
		ifFalse: [ label , ' Login' ].
	indicatorElement label: label
]
