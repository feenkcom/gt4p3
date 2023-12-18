Class {
	#name : #P3ClientTable,
	#superclass : #P3ClientNamedEntity,
	#instVars : [
		'schema',
		'type',
		'constraints',
		'structure'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTable >> client [
	^ self schema client
]

{ #category : #accessing }
P3ClientTable >> columns [
	^ self structure data collect: #second
]

{ #category : #ui }
P3ClientTable >> gtActionQueryFor: anAction [
	<gtAction>
	| statement  |
	statement := 'SELECT * FROM {1} LIMIT 10240' format: { self qualifiedName}.
	^ anAction button
		icon: BrGlamorousVectorIcons playinspect;
		tooltip: statement;
		action: [ :button |
			| result rows |
			result := self client query: statement.
			rows := P3ClientTableRows new
				table: self;
				rows: result recordsAsDictionaries.
			button phlow spawnObject: rows ]
]

{ #category : #ui }
P3ClientTable >> gtDetailsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Details';
		priority: 30;
		items: [ {
			{ #schema . self schema } .
			{ #name . self name } .
			{ #type . self type } .
			{ 'qualified name' . self qualifiedName } } ];
		column: #Key text: #first;
		column: #Value text: #second weight: 3;
		send: #last
]

{ #category : #ui }
P3ClientTable >> gtStructureFor: aView [
	<gtView>
	^ aView forward
		title: 'Structure';
		priority: 40;
		object: [ self structure ];
		view: #gtTableFor:
]

{ #category : #accessing }
P3ClientTable >> qualifiedName [
	^ self schema name , '.' , self name
]

{ #category : #accessing }
P3ClientTable >> schema [
	^ schema
]

{ #category : #accessing }
P3ClientTable >> schema: anObject [
	schema := anObject
]

{ #category : #accessing }
P3ClientTable >> structure [
	| statement |
	structure ifNotNil: [ ^ structure ].
	statement := self client format: 'SELECT ordinal_position, column_name, data_type, is_nullable
 FROM information_schema.columns WHERE table_name = $1 ORDER BY 1'.
 	^ structure := statement query: { self name }
]

{ #category : #accessing }
P3ClientTable >> type [
	^ type
]

{ #category : #accessing }
P3ClientTable >> type: anObject [
	type := anObject
]
