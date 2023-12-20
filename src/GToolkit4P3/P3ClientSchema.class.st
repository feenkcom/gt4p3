Class {
	#name : #P3ClientSchema,
	#superclass : #P3ClientRootEntity,
	#instVars : [
		'tables'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientSchema >> gtEntityRelationshipDiagramFor: aView [
	<gtView>
	^ aView mondrian
		title: 'ER Diagram';
		priority: 40;
		painting: [ :view | 
			view nodes
				stencil: [ :node | BlTextElement new text: node name asRopedText ];
				with: self tables values.
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
						collect: [ :fkc | self tableNamed: fkc foreignKeyTable ] ].
			view layout
				custom: (GtGradHorizontalDominanceTreeLayout new
						levelDistance: 10;
						nodeDistance: 10) ]
]

{ #category : #ui }
P3ClientSchema >> gtTablesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Tables';
		priority: 30;
		items: [ self tables associations ];
		column: 'Name' text: [ :association | association value name ];
		column: 'Type' text: [ :association | association value type ];
		send: [ :association | association value ]
]

{ #category : #testing }
P3ClientSchema >> hasTableNamed: tableName [
	^ self tables includesKey: tableName
]

{ #category : #accessing }
P3ClientSchema >> tableNamed: tableName [
	^ self tables at: tableName
]

{ #category : #ui }
P3ClientSchema >> tables [
	tables ifNotNil: [ ^ tables ].
	tables := OrderedDictionary new.
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
