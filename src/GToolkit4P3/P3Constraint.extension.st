Extension { #name : #P3Constraint }

{ #category : #'*GToolkit4P3' }
P3Constraint class >> allForTable: clientTable [
	^ self allForTable: clientTable name in: clientTable schema name using: clientTable client
]

{ #category : #'*GToolkit4P3' }
P3Constraint >> gtDetails [
	^ {
		{ #schema . self constraintSchema } .
		{ #table . self tableName } .
		{ #name . self constraintName } .
		{ 'description' . self sqlDescription } .
		{ #type . self constraintType } .
		{ 'columns' . $, join: self constraintColumns . self constraintColumns }
	}
]

{ #category : #'*GToolkit4P3' }
P3Constraint >> gtDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		priority: 30;
		items: [ self gtDetails ];
		column: #Key text: #first;
		column: #Value text: #second weight: 3;
		send: #last
]
