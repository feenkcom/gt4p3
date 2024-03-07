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
				aptitude: BrGlamorousButtonRectangularAptitude + BrGlamorousButtonWithLabelAptitude;
				label: languageElement label;
				beSmallSize ]
		content: [ | form formElement |
			form := P3ClientLoginPane new.
			form loadFrom: self defaultConnection.
			form inspectAction: [ :_ :aButton |
				self phlow spawnObject: self defaultConnection.
				aButton fireEvent: BrDropdownHideWish new ].
			formElement := form asGtMagritteViewModel asElement ].
	languageElement := BrButton new
		aptitude: BrGlamorousButtonWithLabelAptitude + aptitude - BrGlamorousButtonExteriorAptitude;
		beSmallSize;
		yourself.
	self updateLanguageLabel.
	^ languageElement
]

{ #category : #private }
LePostgresqlSnippetElement >> onConnectionEstablishedClosed: anAnnouncement [
	self inUIProcessDo: [ self updateLanguageLabel]
]

{ #category : #'api - view' }
LePostgresqlSnippetElement >> snippetToolbar [
	| toolbar label editor |
	toolbar := super snippetToolbar.
	label := BrLabel new
		text: 'Result:' asRopedText;
		aptitude: (BrGlamorousLabelAptitude new glamorousRegularFontAndSize
				foreground: Color gray;
				fontSize: 12);
		yourself.
	label 
		constraintsDo: [ :c | c linear vertical alignCenter ];
		margin: (BlInsets top: 0 left: 100 bottom: 0 right: 3).
	toolbar addChild: label.
	editor := BrEditor new.
	editor size: 200@20.
	editor vFitContent.
	"editor hMatchParent."
	editor aptitude: (BrGlamorousEditableLabelAptitude new) + (BrGlamorousCodeEditorAptitude new).
	toolbar addChild: editor.
	^ toolbar
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
