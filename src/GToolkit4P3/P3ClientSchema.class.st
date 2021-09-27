Class {
	#name : 'P3ClientSchema',
	#superclass : 'P3ClientNamedEntity',
	#category : 'GToolkit4P3'
}

{ #category : 'ui' }
P3ClientSchema >> gtTablesFor: aView [
	<gtView>
	^ aView list
		title: 'Tables';
		items: [ self tables ]
]

{ #category : 'ui' }
P3ClientSchema >> tables [
	^ (self client listTablesInSchema: self name) collect: [ :each | P3ClientTable new client: self client; name: each ]
]
