Extension { #name : #P3Client }

{ #category : #'*GToolkit4P3' }
P3Client >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		text: [ "GTSnippets instance snippetAtOrEmpty: #'P3Client-SQL'" '' ];
		actionButtonIcon: BrGlamorousIcons inspect 
			label: 'Evaluate and inspect' 
			action: [ :aButton |
				| string |
				string := aButton phlow firstParentWithView phlow firstChildWithView parentTabGroup content 
					allChildrenBreadthFirstDetect: [ :each | each isKindOf: BrEditorElement ] 
					ifFound: [:editorElement | editorElement editor text asString ]. 
				aButton fireEvent: (GtPhlowObjectToSpawn new
					object: (self query: string);
					sourceElement: aButton) ]
]
