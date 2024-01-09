Class {
	#name : #GtP3F1DemoExamples,
	#superclass : #Object,
	#classInstVars : [
		'default'
	],
	#category : #'GToolkit-Demo-P3-F1'
}

{ #category : #accessing }
GtP3F1DemoExamples class >> circuitsTable [
	<gtExample>
	^ self publicSchema tableNamed: 'circuits'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> circuitsTableContents [
	<gtExample>
	^ self circuitsTable queryAll
]

{ #category : #accessing }
GtP3F1DemoExamples class >> connectionUrl [
	<gtExample>
	^ 'postgresql://scott2:tiger@stfx.eu:6543/f1db?sslmode=require' asUrl
]

{ #category : #accessing }
GtP3F1DemoExamples class >> default [
	<gtExample>
	^ default
		ifNil: [ 
			default := GtP3F1Demo new
				url: self connectionUrl;
				yourself ]
]

{ #category : #accessing }
GtP3F1DemoExamples class >> driverStandingsTable [
	<gtExample>
	^ self publicSchema tableNamed: 'driverstandings'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> p3Client [
	<gtExample>
	^ self default p3Client
]

{ #category : #accessing }
GtP3F1DemoExamples class >> publicSchema [
	<gtExample>
	^ self p3Client schemas detect: [ :each | each name = 'public' ]
]

{ #category : #accessing }
GtP3F1DemoExamples class >> queryAllCircuits [
	<gtExample>
	^ self p3Client query: 'SELECT * FROM circuits'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> queryCircuitSpaFrancorchampsById [
	<gtExample>
	| statement |
	statement := self p3Client 
		format: 'SELECT * FROM circuits WHERE circuitid = $1'.
	^ statement query: { 13 }
]

{ #category : #accessing }
GtP3F1DemoExamples class >> queryCircuitSpaFrancorchampsByRef [
	<gtExample>
	| id statement |
	id := 'select-circuits-by-circuitref'.
	statement := [ self p3Client preparedStatementNamed: id ]
		on: NotFound
		do: [
			self p3Client 
				prepare: 'SELECT * FROM circuits WHERE circuitref = $1'
				named: id ].
	^ statement query: { 'spa' }
]

{ #category : #accessing }
GtP3F1DemoExamples class >> queryRaces2023Season [
	<gtExample>
	^ self p3Client query: 'SELECT * FROM races WHERE year = 2023 ORDER BY round'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> racesInSeason2020ViaReferencingConstraint [
	<gtExample>
	| referencingConstraint |
	referencingConstraint := self seasonsTable referencingConstraints first.
	^ self seasonsTableContents2020Row resolveReferencingConstraint: referencingConstraint
]

{ #category : #accessing }
GtP3F1DemoExamples class >> racesInSeason2020ViaReferencingConstraintRound7 [
	<gtExample>
	| referencingConstraint racesRows |
	referencingConstraint := self seasonsTable referencingConstraints first.
	racesRows := self seasonsTableContents2020Row resolveReferencingConstraint: referencingConstraint.
	^ P3ClientTableRow new
		table: self racesTable;
		row: racesRows rows seventh;
		yourself
]

{ #category : #accessing }
GtP3F1DemoExamples class >> racesTable [
	<gtExample>
	^ self publicSchema tableNamed: 'races'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> racesTableContents [
	<gtExample>
	^ self racesTable queryAll
]

{ #category : #accessing }
GtP3F1DemoExamples class >> racesTableContentsFirstRow [
	<gtExample>
	| tableRows |
	tableRows := self racesTableContents.
	^ P3ClientTableRow new
		table: tableRows table;
		row: tableRows rows first;
		yourself
]

{ #category : #accessing }
GtP3F1DemoExamples class >> reset [
	default
		ifNotNil: [ 
			default p3Client close.
			default := nil ]
]

{ #category : #accessing }
GtP3F1DemoExamples class >> season2020 [
	<gtExample>
	^ self default f1Seasons detect: [ : each | each year = 2020 ]
]

{ #category : #accessing }
GtP3F1DemoExamples class >> season2020race7 [
	<gtExample>
	^ self season2020 f1Races seventh
]

{ #category : #accessing }
GtP3F1DemoExamples class >> seasonsTable [
	<gtExample>
	^ self publicSchema tableNamed: 'seasons'
]

{ #category : #accessing }
GtP3F1DemoExamples class >> seasonsTableContents [
	<gtExample>
	^ self seasonsTable queryAll
]

{ #category : #accessing }
GtP3F1DemoExamples class >> seasonsTableContents2020Row [
	<gtExample>
	| tableRows row |
	tableRows := self seasonsTableContents.
	row := tableRows rows detect: [ :each | (each at: #year) = 2020 ].
	^ P3ClientTableRow new
		table: tableRows table;
		row: row;
		yourself
]
