Class {
	#name : #PsqlTable,
	#superclass : #PsqlTableLike,
	#instVars : [
		'constraints',
		'incomingConstraints'
	],
	#category : #'GToolkit4P3-Importer'
}

{ #category : #accessing }
PsqlTable >> addConstraint: aConstraint [
	self constraints add: aConstraint.
	aConstraint install
]

{ #category : #accessing }
PsqlTable >> addIncomingConstraint: aConstraint [
	self incomingConstraints add: aConstraint
]

{ #category : #accessing }
PsqlTable >> constraints [
	^ constraints ifNil: [ constraints := OrderedCollection new ]
]

{ #category : #accessing }
PsqlTable >> constraints: anObject [
	constraints := anObject
]

{ #category : #accessing }
PsqlTable >> foreignKeyConstraints [
	^ self constraints select: #isForeignKey
]

{ #category : #accessing }
PsqlTable >> gtColumnViewFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Columns';
		priority: 10;
		items: [ self columns ];
		column: 'Name' text: #name;
		column: 'Type' text: #type;
		column: 'Nullable?'
			text: [ :each | each nullable ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'PK?'
			text: [ :each | each isPrimaryKey ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'Unique?'
			text: [ :each | each isUnique ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 65;
		column: 'Default' text: [ :each | each defaultValue ifNil: [ '' ] ]
]

{ #category : #accessing }
PsqlTable >> gtEntityRelationshipDiagramFor: aView [
	<gtView>
	| container list fkeys |
	^ aView mondrian
		title: 'ER Diagram';
		priority: 60;
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
				with: {self} , (self foreignKeyConstraints collect: [ :fkc | fkc refTable ])
						, (self incomingConstraints collect: [ :fkc | fkc table ]).
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
						levelDistance: 100;
						nodeDistance: 10) ]
]

{ #category : #accessing }
PsqlTable >> incomingConstraints [
	^ incomingConstraints ifNil: [ incomingConstraints := OrderedCollection new ]
]

{ #category : #accessing }
PsqlTable >> incomingConstraints: anObject [
	incomingConstraints := anObject
]
