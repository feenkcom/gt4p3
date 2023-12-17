Class {
	#name : #P3ClientSchema,
	#superclass : #P3ClientNamedEntity,
	#category : #GToolkit4P3
}

{ #category : #ui }
P3ClientSchema >> gtTablesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Tables';
		items: [ self tables ];
		column: 'Name' text: #name;
		column: 'Type' text: #type
]

{ #category : #ui }
P3ClientSchema >> tables [
	^ (self client listTablesInSchema: self name) collect: [ :each | 
		P3ClientTable new 
			client: self client;
			schema: self; 
			name: each first;
			type: each second;
			yourself ]
]
