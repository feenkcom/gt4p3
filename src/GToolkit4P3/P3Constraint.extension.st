Extension { #name : #P3Constraint }

{ #category : #'*GToolkit4P3' }
P3Constraint class >> allForTable: clientTable [
	^ self allForTable: clientTable name in: clientTable schema name using: clientTable client
]
