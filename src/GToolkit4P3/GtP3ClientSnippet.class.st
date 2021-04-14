Class {
	#name : #GtP3ClientSnippet,
	#superclass : #GtSnippet,
	#instVars : [
		'url',
		'port',
		'user',
		'password'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
GtP3ClientSnippet class >> typeName [
	<return: #String>

	^ 'P3Client'
]

{ #category : #accessing }
GtP3ClientSnippet class >> xdocSnippetMappingFor: aNeoJSONMapper [
	"ignore"
]

{ #category : #converting }
GtP3ClientSnippet >> asElement [
	| snippetContainer formElement hostInputElement portInputElement userInputElement passwordInputElement toolbar playInspectButton databaseInputElement |
	formElement := BlElement new.
	formElement constraintsDo: [ :c |  
		c vertical fitContent.
		c horizontal matchParent ].
	formElement layout: (BlGridLayout horizontal columnCount: 2; cellSpacing: 10).

	hostInputElement := self inputElementNamed: 'Url' in: formElement.
	portInputElement := self inputElementNamed: 'Port' in: formElement.
	databaseInputElement := self inputElementNamed: 'Database' in: formElement.
	userInputElement := self inputElementNamed: 'User' in: formElement.
	passwordInputElement := self inputElementNamed: 'Password' in: formElement.
	
	toolbar := BrToolbar new
		look: BrToolbarAptitude new;
		layout: (BlGridLayout horizontal rowCount: 1; cellSpacing: 10);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ].
	playInspectButton := BrButton new.
	playInspectButton 
		beSmall;
		look: BrGlamorousButtonWithIconAptitude;
		label: 'Inspect connection';
		icon: BrGlamorousIcons playinspect asElement;
		action: [ 
			| client  |
			client := P3Client new 
				host: hostInputElement editor text asString;
				port: portInputElement editor text asString asNumber;
				database: databaseInputElement editor text asString;
				user: userInputElement editor text asString;
				password: passwordInputElement editor text asString.
			playInspectButton fireEvent: (GtPhlowObjectToSpawn new object: client; sourceElement: playInspectButton) ].
	toolbar addItem: playInspectButton.
	
	snippetContainer := BrVerticalPane new
		clipChildren: false;
		vFitContent;
		hMatchParent;
		look: (GtSnippetContainerAptitude new snippet: self) + BrShadowAptitude new;
		border: BlBorder empty;
		padding: BlInsets empty;
		background: (BlBackground paint: Color white).
	snippetContainer addChild: formElement.
	snippetContainer addChild: toolbar.
	^ snippetContainer
]

{ #category : #converting }
GtP3ClientSnippet >> asStencilBuilder [
	^ self
]

{ #category : #converting }
GtP3ClientSnippet >> bind: aSnippet to: aSnippetElement [
]

{ #category : #converting }
GtP3ClientSnippet >> inputElementNamed: aString in: formElement [
	| labelElement inputElement text |
	labelElement := BrLabel new text: aString, ':'; look: BrGlamorousLabelAptitude.
	labelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	inputElement := BrEditorElement new.
	inputElement look: BrGlamorousInputFieldSpacingAptitude.
	inputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	text := '' asRopedText 
		weight: 400;
		fontName: 'Source Sans Pro';
		fontSize: 14.
	inputElement editor: (BrTextEditor new text: text).
	formElement addChild: labelElement.
	formElement addChild: inputElement.
	^ inputElement
]

{ #category : #accessing }
GtP3ClientSnippet >> password [
	^ password
]

{ #category : #accessing }
GtP3ClientSnippet >> password: anObject [
	password := anObject
]

{ #category : #accessing }
GtP3ClientSnippet >> port [
	^ port
]

{ #category : #accessing }
GtP3ClientSnippet >> port: anObject [
	port := anObject
]

{ #category : #accessing }
GtP3ClientSnippet >> url [
	^ url
]

{ #category : #accessing }
GtP3ClientSnippet >> url: anObject [
	url := anObject
]

{ #category : #accessing }
GtP3ClientSnippet >> user [
	^ user
]

{ #category : #accessing }
GtP3ClientSnippet >> user: anObject [
	user := anObject
]
