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

{ #category : #accessing }
P3ClientTable >> constraintNamed: constraintName [
	^ self constraints 
		detect: [ :constraint | (constraint at: 'constraint_name') = constraintName ] 
		ifNone: [ nil ]
]

{ #category : #accessing }
P3ClientTable >> constraints [
	| statement result |
	constraints ifNotNil: [ ^ constraints ].
	statement := self client format: 'SELECT * FROM information_schema.table_constraints WHERE table_schema = $1 AND table_name= $2'.
	result := statement query: { self schema name . self name }.
	constraints := result recordsAsDictionaries.
	constraints do: [ :constraint |
		(constraint at: 'constraint_type') = 'PRIMARY KEY'
			ifTrue: [
				statement := self client format: 'SELECT constraint_name, table_name, column_name FROM information_schema.constraint_column_usage WHERE constraint_name = $1'.
				result := statement query: { constraint at: 'constraint_name' }.
				constraint at: 'primary_key_columns' put: (result data collect: #third) ].
		(constraint at: 'constraint_type') = 'FOREIGN KEY'
			ifTrue: [
				statement := self client format: 'SELECT constraint_name, table_name, column_name FROM information_schema.constraint_column_usage WHERE constraint_name = $1'.
				result := statement query: { constraint at: 'constraint_name' }.
				constraint at: 'foreign_key_columns' put: (result data collect: #third).
				statement := self client format: 'SELECT constraint_name, table_name FROM information_schema.constraint_table_usage WHERE constraint_name = $1'.
				result := statement query: { constraint at: 'constraint_name' }.
				constraint at: 'foreign_key_reference_table' put: (result data collect: #second) first.
				statement := self client format: 'SELECT constraint_name, table_name, column_name FROM information_schema.constraint_column_usage WHERE constraint_name = $1'.
				result := statement query: { constraint at: 'constraint_name' }.
				constraint at: 'foreign_key_reference_columns' put: (result data collect: #third) ] ].
	^ constraints
]

{ #category : #accessing }
P3ClientTable >> foreignKeyConstraints [
	^ self constraints
		select: [ :constraint | (constraint at: 'constraint_type') = 'FOREIGN KEY' ]
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
P3ClientTable >> gtConstraintsFor: aView [
	<gtView>
	^ aView forward
		title: 'Constraints';
		priority: 50;
		object: [ self constraints ];
		view: #gtTreeFor:
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
P3ClientTable >> gtReferencingConstraintsFor: aView [
	<gtView>
	^ aView forward
		title: 'Referencing constraints';
		priority: 55;
		object: [ self referencingConstraints ];
		view: #gtTreeFor:
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
P3ClientTable >> primaryKeyConstraints [
	^ self constraints
		select: [ :constraint | (constraint at: 'constraint_type') = 'PRIMARY KEY' ]
]

{ #category : #accessing }
P3ClientTable >> qualifiedName [
	^ self schema name , '.' , self name
]

{ #category : #accessing }
P3ClientTable >> referencingConstraints [
	| statement result |
	statement := self client format: 'SELECT ctu.table_name AS foreign_key_reference_table, tc.table_name, ctu.constraint_name
FROM information_schema.constraint_table_usage AS ctu, information_schema.table_constraints AS tc
WHERE ctu.table_name = $1 AND ctu.constraint_name = tc.constraint_name AND tc.constraint_type = ''FOREIGN KEY'''.
	result := statement query: { self name }.
	^ result recordsAsDictionaries.
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
