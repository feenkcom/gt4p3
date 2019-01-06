Extension { #name : #P3Client }

{ #category : #'*GToolkit4P3' }
P3Client >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		text: [ '' asRopedText attributesBuilder attribute: (BlFontGenericFamilyAttribute monospace beNotOverwritableByStyler) ];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton |
				| query result |
				query := aButton phlow textViewContent asString.
				result := self query: query.
				aButton phlow spawnObject: result ]
]
