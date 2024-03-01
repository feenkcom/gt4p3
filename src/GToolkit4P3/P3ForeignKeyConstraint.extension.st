Extension { #name : #P3ForeignKeyConstraint }

{ #category : #'*GToolkit4P3' }
P3ForeignKeyConstraint >> gtDetails [
	^ super gtDetails
		, {
			{ #'foreign key table' . self foreignKeyTable } .
			{ #'foreign key columns' . $, join: self foreignKeyColumns . self foreignKeyColumns }
		}
]
