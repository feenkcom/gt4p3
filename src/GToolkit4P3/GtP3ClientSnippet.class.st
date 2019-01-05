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
	| snippetContainer formElement urlLabelElement urlInputElement portLabelElement portInputElement userLabelElement userInputElement passwordLabelElement passwordInputElement |
	formElement := BlElement new.
	formElement constraintsDo: [ :c |  
		c vertical fitContent.
		c horizontal matchParent ].
	formElement layout: (BlGridLayout horizontal columnCount: 2; cellSpacing: 10).

	urlLabelElement := BrLabel new text: 'Url: '; look: BrGlamorousLabelLook.
	urlLabelElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal fitContent.
		c grid vertical alignCenter ].
	urlInputElement := BrEditorElement new.
	urlInputElement look: BrGlamorousInputFieldLook.
	urlInputElement constraintsDo: [ :c | 
		c vertical fitContent.
		c horizontal matchParent.
		c grid vertical alignCenter ].
	urlInputElement editor: (BrTextEditor new text: '' asRopedText).
	formElement addChild: urlLabelElement.
	formElement addChild: urlInputElement.
	
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
	
	snippetContainer := BlElement new.
	snippetContainer
		clipChildren: false;
		look: (GtSnippetContainerLook new snippet: self) + BrLayoutLook linearVertical vFitContent hMatchParent + BrShadowLook new;
		border: BlBorder empty;
		padding: BlInsets empty;
		background: (BlBackground paint: Color white).
	snippetContainer addChild: formElement.
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
