Class {
	#name : #PsqlSelectIntoCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'values',
		'newTable',
		'tableNames',
		'aliases',
		'columnAliases',
		'samplingMethods',
		'args',
		'seeds',
		'selects',
		'withQueryNames',
		'functionNames',
		'columnDefinitions',
		'joinConditions',
		'joinColumns',
		'joinUsingAliases',
		'conditions',
		'groupBies',
		'windowNames',
		'orderBies',
		'operators',
		'precedings',
		'followings',
		'partitionBies',
		'limit',
		'start',
		'fetch',
		'outputNames',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSelectIntoCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectIntoCommand: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> aliases [
	^ aliases
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> aliases: anOrderedCollection [
	aliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> args [
	^ args
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> columnAliases [
	^ columnAliases
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> columnAliases: anOrderedCollection [
	columnAliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> columnDefinitions [
	^ columnDefinitions
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> columnDefinitions: anOrderedCollection [
	columnDefinitions := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> compositeNodeVariables [
	^ #(#values #tableNames #args #seeds #selects #joinConditions #conditions #groupBies #orderBies #precedings #followings #partitionBies #withQueries)
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> compositeTokenVariables [
	^ #(#_s #aliases #columnAliases #samplingMethods #withQueryNames #functionNames #columnDefinitions #joinColumns #joinUsingAliases #windowNames #operators #outputNames)
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> conditions [
	^ conditions
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> conditions: anOrderedCollection [
	self setParents: self conditions to: nil.
	conditions := anOrderedCollection.
	self setParents: self conditions to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> fetch [
	^ fetch
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> fetch: aPsqlNumberNode [
	self fetch notNil ifTrue: [ self fetch parent: nil ].
	fetch := aPsqlNumberNode.
	self fetch notNil ifTrue: [ self fetch parent: self ]
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> followings [
	^ followings
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> followings: anOrderedCollection [
	self setParents: self followings to: nil.
	followings := anOrderedCollection.
	self setParents: self followings to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> functionNames: anOrderedCollection [
	functionNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> groupBies [
	^ groupBies
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> groupBies: anOrderedCollection [
	self setParents: self groupBies to: nil.
	groupBies := anOrderedCollection.
	self setParents: self groupBies to: self
]

{ #category : #'generated-initialize-release' }
PsqlSelectIntoCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	tableNames := OrderedCollection new: 2.
	aliases := OrderedCollection new: 2.
	columnAliases := OrderedCollection new: 2.
	samplingMethods := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	seeds := OrderedCollection new: 2.
	selects := OrderedCollection new: 2.
	withQueryNames := OrderedCollection new: 2.
	functionNames := OrderedCollection new: 2.
	columnDefinitions := OrderedCollection new: 2.
	joinConditions := OrderedCollection new: 2.
	joinColumns := OrderedCollection new: 2.
	joinUsingAliases := OrderedCollection new: 2.
	conditions := OrderedCollection new: 2.
	groupBies := OrderedCollection new: 2.
	windowNames := OrderedCollection new: 2.
	orderBies := OrderedCollection new: 2.
	operators := OrderedCollection new: 2.
	precedings := OrderedCollection new: 2.
	followings := OrderedCollection new: 2.
	partitionBies := OrderedCollection new: 2.
	outputNames := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinColumns [
	^ joinColumns
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinColumns: anOrderedCollection [
	joinColumns := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinConditions [
	^ joinConditions
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinConditions: anOrderedCollection [
	self setParents: self joinConditions to: nil.
	joinConditions := anOrderedCollection.
	self setParents: self joinConditions to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinUsingAliases [
	^ joinUsingAliases
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> joinUsingAliases: anOrderedCollection [
	joinUsingAliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> limit [
	^ limit
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> limit: aPsqlNumberNode [
	self limit notNil ifTrue: [ self limit parent: nil ].
	limit := aPsqlNumberNode.
	self limit notNil ifTrue: [ self limit parent: self ]
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> newTable [
	^ newTable
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> newTable: aSmaCCToken [
	newTable := aSmaCCToken
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> nodeVariables [
	^ #(#limit #start #fetch)
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> operators [
	^ operators
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> orderBies [
	^ orderBies
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> orderBies: anOrderedCollection [
	self setParents: self orderBies to: nil.
	orderBies := anOrderedCollection.
	self setParents: self orderBies to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> outputNames [
	^ outputNames
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> outputNames: anOrderedCollection [
	outputNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> partitionBies [
	^ partitionBies
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> partitionBies: anOrderedCollection [
	self setParents: self partitionBies to: nil.
	partitionBies := anOrderedCollection.
	self setParents: self partitionBies to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> precedings [
	^ precedings
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> precedings: anOrderedCollection [
	self setParents: self precedings to: nil.
	precedings := anOrderedCollection.
	self setParents: self precedings to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> samplingMethods [
	^ samplingMethods
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> samplingMethods: anOrderedCollection [
	samplingMethods := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> seeds [
	^ seeds
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> seeds: anOrderedCollection [
	self setParents: self seeds to: nil.
	seeds := anOrderedCollection.
	self setParents: self seeds to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> selects [
	^ selects
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> selects: anOrderedCollection [
	self setParents: self selects to: nil.
	selects := anOrderedCollection.
	self setParents: self selects to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> start [
	^ start
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> start: aPsqlNumberNode [
	self start notNil ifTrue: [ self start parent: nil ].
	start := aPsqlNumberNode.
	self start notNil ifTrue: [ self start parent: self ]
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> tokenVariables [
	^ #(#newTable)
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> windowNames [
	^ windowNames
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> windowNames: anOrderedCollection [
	windowNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> withQueryNames [
	^ withQueryNames
]

{ #category : #generated }
PsqlSelectIntoCommandNode >> withQueryNames: anOrderedCollection [
	withQueryNames := anOrderedCollection
]
