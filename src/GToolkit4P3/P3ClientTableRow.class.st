Class {
	#name : #P3ClientTableRow,
	#superclass : #P3ClientTableEntity,
	#instVars : [
		'row'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTableRow >> foreignKeyFor: columnName [
	^ self table foreignKeyConstraints
		detect: [ :c | (c at: 'foreign_key_columns') first = columnName ]
		ifNone: [ nil ]
]

{ #category : #accessing }
P3ClientTableRow >> foreignKeyTableFor: columnName [
	^ (self foreignKeyFor: columnName) ifNotNil: [ :constraint | constraint at: 'foreign_key_reference_table' ]
]

{ #category : #accessing }
P3ClientTableRow >> gtViewRowFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Row';
		priority: 30;
		items: [ self table columns ];
		column: 'Field' text: #yourself;
		column: 'Value' text: [ :each | self row at: each ] weight: 3;
		column: 'References' text: [ :each | (self foreignKeyTableFor: each) ifNil: [ '' ] ];
		send: [ :column | 
			(self foreignKeyTableFor: column)
				ifNil: [ self row at: column ]
				ifNotNil: [ :referencedTable |
					| keyValue referencedColumn statement result|
					keyValue := self row at: column.
					referencedColumn := (self foreignKeyFor: column).
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
P3ClientTableRow >> row [
	^ row
]

{ #category : #accessing }
P3ClientTableRow >> row: anObject [
	row := anObject
]
