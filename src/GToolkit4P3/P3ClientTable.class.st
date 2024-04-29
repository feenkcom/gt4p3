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
	#category : #'GToolkit4P3-Model'
}

{ #category : #accessing }
P3ClientTable >> client [
	^ self schema client
]

{ #category : #accessing }
P3ClientTable >> columnNames [
	^ self structure collect: #name
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
	^ anAction button
		icon: BrGlamorousVectorIcons playinspect;
		tooltip: self queryAllStatement;
		action: [ :button | button phlow spawnObject: self queryAll ]
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
	| container list fkeys |
	^ aView mondrian
		title: 'ER diagram';
		priority: 49;
		painting: [ :view | 
			view nodes
				stencil: [ :aTable | 
					container := BrVerticalPane new
							exact: 200 @ 100;
							margin: (BlInsets all: 10);
							aptitude: BrShadowAptitude + BrGlamorousWithVerticalResizerAptitude + BrGlamorousWithHorizontalResizerAptitude;
							padding: (BlInsets all: 5);
							background: Color white.
					container
						addChild: (BrLabel new
								text: aTable name;
								margin: (BlInsets bottom: 5);
								aptitude: BrGlamorousLabelAptitude new bold).
					list := BrColumnedList new matchParent.
					list column
						title: 'Column';
						cellStencil: [ BrLabel new hMatchParent beSmallSize aptitude: BrGlamorousLabelAptitude ];
						dataBinder: [ :anItemElement :anItem | anItemElement text: anItem name ].
					list column
						title: 'Type';
						cellStencil: [ BrLabel new hMatchParent beSmallSize
								aptitude: (BrGlamorousLabelAptitude new foreground: Color gray) ];
						dataBinder: [ :anItemElement :anItem | anItemElement text: anItem dataType ].
					fkeys := aTable foreignKeyConstraints flatCollect: #foreignKeyColumns.
					list
						items: (aTable structure reject: [ :each | fkeys includes: each name ]).
					container addChild: list.
					container ];
				with: {self}
						, (self foreignKeyConstraints
								collect: [ :fkc | self schema tableNamed: fkc foreignKeyTable ])
						, (self referencingConstraints
								collect: [ :fkc | self schema tableNamed: fkc tableName ]).
			view edges
				stencil: [ :class | 
					BlParabollaArcElement new
						zIndex: -1;
						curvatureFraction: 0.1;
						border: (BlBorder paint: (BrGlamorousColors shadowColor alpha: 0.8) width: 2);
						toHead: (BlArrowheadSimpleArrow new
								border: (BlBorder builder
										paint: (BrGlamorousColors shadowColor alpha: 0.8);
										width: 2;
										build)) ];
				connectToAll: [ :node | 
					node foreignKeyConstraints
						collect: [ :fkc | self schema tableNamed: fkc foreignKeyTable ] ].
			view layout
				custom: (GtGradHorizontalDominanceTreeLayout new
						levelDistance: 100;
						nodeDistance: 10) ]
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
	^ aView columnedList
		title: 'Structure';
		priority: 40;
		items: [ self structure ];
		column: 'Ordinal position' text: #ordinalPosition;
		column: 'Column name' text: #name;
		column: 'Data type' text: #dataType;
		column: 'Nullable' text: #isNullable
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
P3ClientTable >> queryAll [
	| result |
	result := self client query: self queryAllStatement.
	^ P3ClientTableRows new
		table: self;
		rows: result recordsAsDictionaries
]

{ #category : #ui }
P3ClientTable >> queryAllStatement [
	^ 'SELECT * FROM {1} LIMIT 10240' format: {self qualifiedName}
]

{ #category : #accessing }
P3ClientTable >> referencingConstraints [
	| names |
	referencingConstraints ifNotNil: [ ^ referencingConstraints ].
	names := P3Constraint 
		referencingConstraintNamesForTable: self name 
		in: self schema name 
		using: self client.
	referencingConstraints := names collect: [ :each |
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
	structure ifNotNil: [ ^ structure ].
	^ structure := P3ClientTableColumn allForTable: self
]

{ #category : #accessing }
P3ClientTable >> type [
	^ type
]

{ #category : #accessing }
P3ClientTable >> type: anObject [
	type := anObject
]
