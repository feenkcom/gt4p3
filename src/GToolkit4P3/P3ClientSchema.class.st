Class {
	#name : #P3ClientSchema,
	#superclass : #P3ClientRootEntity,
	#instVars : [
		'tables'
	],
	#category : #GToolkit4P3
}

{ #category : #ui }
P3ClientSchema >> gtTablesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Tables';
		items: [ self tables associations ];
		column: 'Name' text: [ :association | association value name ];
		column: 'Type' text: [ :association | association value type ];
		send: [ :association | association value ]
]

{ #category : #accessing }
P3ClientSchema >> tableNamed: tableName [
	^ self tables at: tableName
]

{ #category : #ui }
P3ClientSchema >> tables [
	tables ifNotNil: [ ^ tables ].
	tables := Dictionary new.
	(self client listTablesInSchema: self name) do: [ :each | 
		| table |
		table := P3ClientTable new 
			schema: self; 
			name: each first;
			type: each second;
			yourself.
		tables at: table name put: table ].
	^ tables
]
