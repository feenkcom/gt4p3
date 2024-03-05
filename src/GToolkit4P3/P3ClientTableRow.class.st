Class {
	#name : #P3ClientTableRow,
	#superclass : #P3ClientTableEntity,
	#instVars : [
		'row'
	],
	#category : #'GToolkit4P3-Model'
}

{ #category : #accessing }
P3ClientTableRow >> foreignKeyFor: columnName [
	^ self table foreignKeyConstraints
		detect: [ :constraint |
			"only for one column now"
			constraint constraintColumns first = columnName ]
		ifNone: [ nil ]
]

{ #category : #accessing }
P3ClientTableRow >> foreignKeyTableFor: columnName [
	^ (self foreignKeyFor: columnName) ifNotNil: [ :constraint | constraint foreignKeyTable ]
]

{ #category : #accessing }
P3ClientTableRow >> gtViewReferencesFor: aView [
	<gtView>
	self table referencingConstraints ifEmpty: [ ^ aView empty ].
	^ aView list
		title: 'References';
		priority: 85;
		items: [ self table referencingConstraints ];
		itemText: [ :referencingConstraint | referencingConstraint tableName ];
		send: [ :referencingConstraint | 
			self resolveReferencingConstraint: referencingConstraint ]
]

{ #category : #accessing }
P3ClientTableRow >> gtViewRowFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Row';
		priority: 80;
		items: [ self table columnNames ];
		column: 'Field' text: #yourself;
		column: 'Value' text: [ :each | (self row at: each) ifNil: [ '' ] ] weight: 3;
		column: 'References' text: [ :each | (self foreignKeyTableFor: each) ifNil: [ '' ] ];
		send: [ :column | 
			(self foreignKeyTableFor: column)
				ifNil: [ self row at: column ]
				ifNotNil: [ :referencedTable |
					| keyValue referencedColumn statement result |
					"only for one column for now"
					keyValue := self row at: column.
					referencedColumn := self foreignKeyFor: column.
					statement := self client format: ('select * from {1} where {2} = $1' format: { referencedTable . column }).
					result := statement query: { keyValue }.
					P3ClientTableRow new
						table: (self table schema tableNamed: referencedTable);
						row: result recordsAsDictionaries first ] ]
]

{ #category : #printing }
P3ClientTableRow >> printOn: stream [
	super printOn: stream.
	stream 
		nextPut: $(; 
		nextPutAll: self table name; 
		nextPut: $)
]

{ #category : #accessing }
P3ClientTableRow >> resolveReferencingConstraint: referencingConstraint [
	| keyValue statement result targetTable column referencedColumn |
	targetTable := referencingConstraint tableName.
	column := referencingConstraint constraintColumns first.
	referencedColumn := referencingConstraint foreignKeyColumns first.
	keyValue := self row at: referencedColumn.
	statement := self client
			format: ('select * from {1} where {2} = $1'
					format: {targetTable.
							column}).
	result := statement query: {keyValue}.
	^ P3ClientTableRows new
		table: (self table schema tableNamed: targetTable);
		rows: result recordsAsDictionaries
]

{ #category : #accessing }
P3ClientTableRow >> row [
	^ row
]

{ #category : #accessing }
P3ClientTableRow >> row: anObject [
	row := anObject
]
