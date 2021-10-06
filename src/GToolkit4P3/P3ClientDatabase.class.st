Class {
	#name : #P3ClientDatabase,
	#superclass : #P3ClientNamedEntity,
	#category : 'GToolkit4P3'
}

{ #category : #ui }
P3ClientDatabase >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		text: [ '' asRopedText attributesBuilder attribute: (BlFontGenericFamilyAttribute monospace beNotOverwritableByStyler) ];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton |
				| query result |
				query := aButton phlow textViewContent asString.
				result := self client query: query.
				aButton phlow spawnObject: result ]
]
