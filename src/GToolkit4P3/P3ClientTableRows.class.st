Class {
	#name : #P3ClientTableRows,
	#superclass : #P3ClientTableEntity,
	#instVars : [
		'rows'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTableRows >> gtRowsFor: aView [
	<gtView>
	| columnedList |
	self rows isEmptyOrNil ifTrue: [ ^ aView empty ].
	self rows first isEmptyOrNil ifNil: [ ^ aView empty ].
	columnedList := aView columnedList
		title: 'Rows';
		items: [ self rows ];
		priority: 35.
	self table columns
		do: [ :column | 
			columnedList
				column: column
				do: [ :aColumn | 
					aColumn
						item: [ :eachRow | (eachRow at: column) ifNil: [ '' ] ];
						weight: 1 ] ].
	columnedList send: [ :eachRow | 
		P3ClientTableRow new
			table: self table;
			row: eachRow ].
	^ columnedList
]

{ #category : #printing }
P3ClientTableRows >> printOn: stream [
	super printOn: stream.
	stream 
		nextPut: $(; 
		nextPutAll: self table name; 
		space;
		nextPut: $#; 
		print: self rows size; 
		nextPut: $)
]

{ #category : #accessing }
P3ClientTableRows >> rows [
	^ rows
]

{ #category : #accessing }
P3ClientTableRows >> rows: anObject [
	rows := anObject
]
