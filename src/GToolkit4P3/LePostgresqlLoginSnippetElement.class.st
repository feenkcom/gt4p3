Class {
	#name : #LePostgresqlLoginSnippetElement,
	#superclass : #LeSnippetElement,
	#instVars : [
		'contentElement',
		'indicatorElement',
		'form'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #initiailize }
LePostgresqlLoginSnippetElement >> initialize [
	| formElement |
	super initialize.

	form := P3ClientLoginPane new.
	"loadLoginForm happens when the viewModel is changed" 
	form acceptAction: [ :aModel :aButton :aMemento :aDescription |
		form saveToDefaultConnection.
		self postgresqlUrl: form url.
		aButton phlow spawnObject: self defaultConnection ].
	
	formElement := form asGtMagritteViewModel asElement margin: (BlInsets all: 10).
	formElement
		constraintsDo: [ :c | 
			c frame horizontal alignLeft.
			c frame vertical alignTop ].
	formElement hMatchParent.
	
	indicatorElement := BrLabel new
		aptitude: (BrGlamorousLabelAptitude new glamorousRegularSmallSize
		foreground: BrGlamorousColors textMarkupColor);
		margin: (BlInsets top: 5 right: 5);
		text: 'PostgreSQL login'.
	indicatorElement constraintsDo: [ :c |
		c frame horizontal alignRight.
		c frame vertical alignTop ].
		
	contentElement := BrFrame new
		hMatchParent;
		vFitContent;
		addChildren: { formElement. indicatorElement }
]

{ #category : #private }
LePostgresqlLoginSnippetElement >> loadLoginForm [
	self postgresqlUrl isNil
		ifTrue: [ form loadFrom: self defaultConnection ]
		ifFalse: [ form url: self postgresqlUrl ].
]

{ #category : #'api - snippet view model' }
LePostgresqlLoginSnippetElement >> onSnippetViewModelChanged [
	super onSnippetViewModelChanged.
	
	self loadLoginForm
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> postgresqlUrl [
	^ self snippetViewModel postgresqlUrl
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> postgresqlUrl: aPostgresqlUrl [
	self snippetViewModel postgresqlUrl: aPostgresqlUrl
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetContent [
	^ contentElement
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetToolbar [
	^ nil
]
