Class {
	#name : #P3ClientTableColumn,
	#superclass : #P3ClientTableEntity,
	#instVars : [
		'dataType',
		'ordinalPosition',
		'isNullable',
		'name'
	],
	#category : #'GToolkit4P3-Model'
}

{ #category : #'instance creation' }
P3ClientTableColumn class >> allForTable: table [
	| statement result |
	statement := table client
			format: 'SELECT ordinal_position, column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema = $1 AND table_name = $2 ORDER BY 1'.
	result := statement query: { table schema name . table name }.
	^ result rows
		collect: [ :each | 
			self new
				table: table;
				ordinalPosition: each first;
				name: each second;
				dataType: each third;
				isNullable: each fourth = 'YES';
				yourself ]
]

{ #category : #accessing }
P3ClientTableColumn >> dataType [
	^ dataType
]

{ #category : #accessing }
P3ClientTableColumn >> dataType: anObject [
	dataType := anObject
]

{ #category : #'gt extensions' }
P3ClientTableColumn >> gtDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		priority: 30;
		items: [ {
			{ #schema . self table schema . self table schema } .
			{ #table . self table name . self table }.
			{ #name . self name }.
			{ #'data type' . self dataType }.
			{ #'ordinal position' . self ordinalPosition }.
			{ 'nullable' . self isNullable } } ];
		column: #Key text: #first;
		column: #Value text: #second weight: 3;
		send: #last
]

{ #category : #accessing }
P3ClientTableColumn >> isNullable [
	^ isNullable
]

{ #category : #accessing }
P3ClientTableColumn >> isNullable: anObject [
	isNullable := anObject
]

{ #category : #accessing }
P3ClientTableColumn >> name [
	^ name
]

{ #category : #accessing }
P3ClientTableColumn >> name: anObject [
	name := anObject
]

{ #category : #accessing }
P3ClientTableColumn >> ordinalPosition [
	^ ordinalPosition
]

{ #category : #accessing }
P3ClientTableColumn >> ordinalPosition: anObject [
	ordinalPosition := anObject
]

{ #category : #printing }
P3ClientTableColumn >> printOn: stream [
	super printOn: stream.
	stream
		nextPut: $(;
		nextPutAll: self table name;
		nextPut: $.;
		nextPutAll: self name;
		nextPut: $)
]
