Class {
	#name : #P3ClientDatabase,
	#superclass : #P3ClientRootEntity,
	#category : #'GToolkit4P3-Model'
}

{ #category : #ui }
P3ClientDatabase >> gtSQLFor: aView [
	<gtView>
	self isCurrent ifFalse: [ ^ aView empty ].
	^ aView textEditor
		title: 'SQL';
		aptitude: [ BrGlamorousCodeEditorAptitude new ];
		text: [ '' asRopedText ];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton |
				| query result |
				query := aButton phlow textViewContent asString.
				result := self client query: query.
				aButton phlow spawnObject: result ]
]

{ #category : #ui }
P3ClientDatabase >> gtSchemasFor: aView [
	<gtView>
	self isCurrent ifFalse: [ ^ aView empty ].
	^ aView list
		title: 'Schemas';
		priority: 60;
		items: [ self client schemas ]
]

{ #category : #testing }
P3ClientDatabase >> isCurrent [
	^ self client database = self name
]
