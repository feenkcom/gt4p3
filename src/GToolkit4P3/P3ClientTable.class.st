Class {
	#name : #P3ClientTable,
	#superclass : #P3ClientNamedEntity,
	#instVars : [
		'schema',
		'type',
		'constraints',
		'structure',
		'referencingConstraints'
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
		detect: [ :constraint | constraint constraintName = constraintName ] 
		ifNone: [ nil ]
]

{ #category : #accessing }
P3ClientTable >> constraints [
	constraints ifNotNil: [ ^ constraints ].
	constraints := P3Constraint allForTable: self.
	^ constraints
]

{ #category : #accessing }
P3ClientTable >> foreignKeyConstraints [
	^ self constraints 
		select: [ :constraint | constraint isForeignKey ]
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
	^ aView columnedList
		title: 'Constraints';
		priority: 45;
		items: [ self constraints ];
		column: 'Name' text: [ :constraint | constraint constraintName ];
		column: 'Table' text: [ :constraint | constraint tableName ];
		column: 'Description' text: [ :constraint | constraint sqlDescription ]
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

{ #category : #accessing }
P3ClientTable >> gtEntityRelationshipDiagramFor: aView [
	<gtView>
	^ aView mondrian
		title: 'ER Diagram';
		priority: 60;
		painting: [ :view | 
			view nodes
				stencil: [ :node | BlTextElement new text: node name asRopedText ];
				with: { self } 
					, (self foreignKeyConstraints collect: [ :fkc | self schema tableNamed: fkc foreignKeyTable ]) 
					, (self referencingConstraints collect: [ :fkc | self schema tableNamed: fkc tableName ]).
			view edges
				stencil: [ :class | 
					BlParabollaArcElement new
						zIndex: 0;
						curvatureFraction: 0.1;
						border: (BlBorder paint: (Color orange alpha: 0.8) width: 2);
						toHead: (BlArrowheadSimpleArrow new
								border: (BlBorder builder
										paint: (Color orange alpha: 0.8);
										width: 2;
										build)) ];
				connectToAll: [ :node | 
					node foreignKeyConstraints
						collect: [ :fkc | self schema tableNamed: fkc foreignKeyTable ] ].
			view layout circle ]
]

{ #category : #ui }
P3ClientTable >> gtReferencingConstraintsFor: aView [
	<gtView>
	self referencingConstraints ifEmpty: [ ^ aView empty ].
	^ aView columnedList
		title: 'References';
		priority: 50;
		items: [ self referencingConstraints ];
		column: 'Name' text: [ :constraint | constraint constraintName ];
		column: 'Table' text: [ :constraint | constraint tableName ];
		column: 'Description' text: [ :constraint | constraint sqlDescription ]
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
		select: [ :constraint | constraint isPrimaryKey ]
]

{ #category : #accessing }
P3ClientTable >> qualifiedName [
	^ self schema name , '.' , self name
]

{ #category : #accessing }
P3ClientTable >> referencingConstraints [
	| statement result |
	referencingConstraints ifNotNil: [ ^ referencingConstraints ].
	statement := self client format: 'SELECT tc.table_name, ctu.constraint_name
FROM information_schema.constraint_table_usage AS ctu, information_schema.table_constraints AS tc
WHERE ctu.table_name = $1 AND ctu.constraint_name = tc.constraint_name AND tc.constraint_type = ''FOREIGN KEY'''.
	result := statement query: { self name }.
	referencingConstraints := result data collect: [ :each |
		(self schema tableNamed: each first) constraintNamed: each second ].
	^ referencingConstraints
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
