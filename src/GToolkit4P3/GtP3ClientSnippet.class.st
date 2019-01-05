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

{ #category : #converting }
GtP3ClientSnippet >> asElement [
	| snippetContainer formElement hostLabelElement hostInputElement portLabelElement portInputElement userLabelElement userInputElement passwordLabelElement passwordInputElement toolbar playInspectButton databaseLabelElement databaseInputElement |
	formElement := BlElement new.
	formElement constraintsDo: [ :c |  
		c vertical fitContent.
		c horizontal matchParent ].
	formElement layout: (BlGridLayout horizontal columnCount: 2; cellSpacing: 10).

	hostLabelElement := BrLabel new text: 'Url: '; look: BrGlamorousLabelLook.
	hostLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	hostInputElement := BrEditorElement new.
	hostInputElement look: BrGlamorousInputFieldLook.
	hostInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	hostInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: hostLabelElement.
	formElement addChild: hostInputElement.
	
	portLabelElement := BrLabel new text: 'Port: '; look: BrGlamorousLabelLook.
	portLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	portInputElement := BrEditorElement new.
	portInputElement look: BrGlamorousInputFieldLook.
	portInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	portInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: portLabelElement.
	formElement addChild: portInputElement.

	databaseLabelElement := BrLabel new text: 'Database: '; look: BrGlamorousLabelLook.
	databaseLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	databaseInputElement := BrEditorElement new.
	databaseInputElement look: BrGlamorousInputFieldLook.
	databaseInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	databaseInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: databaseLabelElement.
	formElement addChild: databaseInputElement.

	userLabelElement := BrLabel new text: 'User: '; look: BrGlamorousLabelLook.
	userLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	userInputElement := BrEditorElement new.
	userInputElement look: BrGlamorousInputFieldLook.
	userInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	userInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: userLabelElement.
	formElement addChild: userInputElement.
	
	passwordLabelElement := BrLabel new text: 'Password: '; look: BrGlamorousLabelLook.
	passwordLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	passwordInputElement := BrEditorElement new.
	passwordInputElement look: BrGlamorousInputFieldLook.
	passwordInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	passwordInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: passwordLabelElement.
	formElement addChild: passwordInputElement.
	
	toolbar := BrToolbar new
		look: BrToolbarLook new;
		layout: (BlGridLayout horizontal rowCount: 1; cellSpacing: 3);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ].
	playInspectButton := BrButton new.
	playInspectButton beSmall;
		look: BrGlamorousButtonWithIconLook;
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
	
	snippetContainer := BlElement new.
	snippetContainer
		clipChildren: false;
		look: (GtSnippetContainerLook new snippet: self) + BrLayoutLook linearVertical vFitContent hMatchParent + BrShadowLook new;
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
