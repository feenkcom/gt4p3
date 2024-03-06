Class {
	#name : #LePostgresqlLoginSnippetElement,
	#superclass : #LeSnippetElement,
	#instVars : [
		'contentElement'
	],
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #initiailize }
LePostgresqlLoginSnippetElement >> initialize [
	| form formElement indicatorElement |
	super initialize.
	form := P3ClientLoginPane new.
	formElement := form asGtMagritteViewModel asElement margin: (BlInsets all: 10).
	formElement constraintsDo: [ :c |
		c frame horizontal alignLeft.
		c frame vertical alignTop ].
	formElement
		hFitContent.
	indicatorElement := BrLabel new
		aptitude: (BrGlamorousLabelAptitude new glamorousRegularSmallSize
		foreground: BrGlamorousColors textMarkupColor);
		margin: (BlInsets top: 5 right: 5);
		text: 'PostgreSQL Login'.
	indicatorElement constraintsDo: [ :c |
		c frame horizontal alignRight.
		c frame vertical alignTop ].
	contentElement := BrFrame new
		hMatchParent;
		vFitContent;
		addChildren: { formElement. indicatorElement }
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetContent [
	^ contentElement
]

{ #category : #accessing }
LePostgresqlLoginSnippetElement >> snippetToolbar [
	^ nil
]
