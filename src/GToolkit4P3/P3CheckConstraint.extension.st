Extension { #name : #P3CheckConstraint }

{ #category : #'*GToolkit4P3' }
P3CheckConstraint >> gtDetails [
	^ super gtDetails
		, {
			{ #'check clause' . self checkClause }
		}
]
