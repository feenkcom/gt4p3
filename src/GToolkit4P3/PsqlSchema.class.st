Class {
	#name : #PsqlSchema,
	#superclass : #PsqlModel,
	#instVars : [
		'tables',
		'views',
		'database'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlSchema >> addTable: aTable [
	self tables at: aTable name asLowercase put: aTable
]

{ #category : #accessing }
PsqlSchema >> addView: aView [
	self views at: aView name asLowercase put: aView
]

{ #category : #accessing }
PsqlSchema >> database [
	^ database
]

{ #category : #accessing }
PsqlSchema >> database: anObject [
	database := anObject
]

{ #category : #accessing }
PsqlSchema >> gtDatabaseViewsFor: aView [
	<gtView>
	views isEmpty ifTrue: [ ^ aView empty ].
	^ aView columnedList
		title: 'Views';
		priority: 12;
		items: [ views asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Name' text: #name;
		column: '# Columns'
			text: [ :each | each columns size ]
			width: 75
]

{ #category : #accessing }
PsqlSchema >> gtEntityRelationshipDiagramFor: aView [
	<gtView>
	| container list fkeys |
	tables isEmpty ifTrue: [ ^ aView empty ].
	^ aView mondrian
		title: 'ER Diagram';
		priority: 40;
		painting: [ :view | 
			view nodes
				stencil: [ :aTable | 
					container := BrVerticalPane new
							exact: 200 @ 100;
							margin: (BlInsets all: 10);
							aptitude: BrShadowAptitude + BrGlamorousWithVerticalResizerAptitude
									+ BrGlamorousWithHorizontalResizerAptitude;
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
						dataBinder: [ :anItemElement :anItem | anItemElement text: anItem type ].
					fkeys := aTable foreignKeyConstraints flatCollect: #columns.
					list items: (aTable columns reject: [ :each | fkeys includes: each name ]).
					container addChild: list.
					container ];
				with: self tables values.
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
				connectToAll: [ :n | n foreignKeyConstraints collect: #refTable ].
			view layout
				custom: (GtGradHorizontalDominanceTreeLayout new
						levelDistance: 200;
						nodeDistance: 10) ]
]

{ #category : #accessing }
PsqlSchema >> gtTablesFor: aView [
	<gtView>
	tables isEmpty ifTrue: [ ^ aView empty ].
	^ aView columnedList
		title: 'Tables';
		priority: 10;
		items: [ tables asSortedCollection: [ :a :b | a name < b name ] ];
		column: 'Name' text: #name;
		column: '# Columns'
			text: [ :each | each columns size ]
			width: 75
]

{ #category : #accessing }
PsqlSchema >> initialize [
	super initialize.
	tables := Dictionary new.
	views := Dictionary new
]

{ #category : #accessing }
PsqlSchema >> tableNamed: aName [
	^ self tables detect: [ :each | each name sameAs: aName ] ifNone: [  ]
]

{ #category : #accessing }
PsqlSchema >> tables [
	^ tables
]

{ #category : #accessing }
PsqlSchema >> tables: anObject [
	tables := anObject
]

{ #category : #accessing }
PsqlSchema >> viewNamed: aName [
	^ self views detect: [ :each | each name sameAs: aName ] ifNone: [  ]
]

{ #category : #accessing }
PsqlSchema >> views [
	^ views
]

{ #category : #accessing }
PsqlSchema >> views: anObject [
	views := anObject
]
