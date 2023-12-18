Class {
	#name : #P3ClientTableRow,
	#superclass : #P3ClientTableEntity,
	#instVars : [
		'row'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTableRow >> gtViewRowFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Row';
		priority: 30;
		items: [ self table columns ];
		column: 'Field' text: #yourself;
		column: 'Value' text: [ :each | self row at: each ] weight: 3
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
