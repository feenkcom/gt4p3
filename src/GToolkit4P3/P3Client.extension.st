Extension { #name : #P3Client }

{ #category : #'*GToolkit4P3' }
P3Client >> databases [
	^ self listDatabases collect: [ :each | 
		P3ClientDatabase new client: self; databaseName: each ]
]

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

{ #category : #'*GToolkit4P3' }
P3Client >> gtSchemasFor: aView [
	<gtView>
	^ aView list
		title: 'Schemas';
		items: [ self schemas ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> schemas [
	^ self listSchemas collect: [ :each | 
		P3ClientSchema new client: self; name: each ]
]
