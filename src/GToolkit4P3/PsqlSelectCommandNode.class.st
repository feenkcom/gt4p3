Class {
	#name : #PsqlSelectCommandNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'values',
		'outputNames',
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
		'where',
		'groupBies',
		'having',
		'windowNames',
		'orderBies',
		'operators',
		'precedings',
		'followings',
		'partitionBies',
		'usingExpressions',
		'limit',
		'offset',
		'fetch',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlSelectCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlSelectCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectCommand: self
]

{ #category : #generated }
PsqlSelectCommandNode >> aliases [
	^ aliases
]

{ #category : #generated }
PsqlSelectCommandNode >> aliases: anOrderedCollection [
	aliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> args [
	^ args
]

{ #category : #generated }
PsqlSelectCommandNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> columnAliases [
	^ columnAliases
]

{ #category : #generated }
PsqlSelectCommandNode >> columnAliases: anOrderedCollection [
	columnAliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> columnDefinitions [
	^ columnDefinitions
]

{ #category : #generated }
PsqlSelectCommandNode >> columnDefinitions: anOrderedCollection [
	columnDefinitions := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> compositeNodeVariables [
	^ #(#values #tableNames #args #seeds #selects #joinConditions #groupBies #orderBies #precedings #followings #partitionBies #usingExpressions #withQueries)
]

{ #category : #generated }
PsqlSelectCommandNode >> compositeTokenVariables [
	^ #(#_s #outputNames #aliases #columnAliases #samplingMethods #withQueryNames #functionNames #columnDefinitions #joinColumns #joinUsingAliases #windowNames #operators)
]

{ #category : #generated }
PsqlSelectCommandNode >> fetch [
	^ fetch
]

{ #category : #generated }
PsqlSelectCommandNode >> fetch: aPsqlExpressionNode [
	self fetch notNil ifTrue: [ self fetch parent: nil ].
	fetch := aPsqlExpressionNode.
	self fetch notNil ifTrue: [ self fetch parent: self ]
]

{ #category : #generated }
PsqlSelectCommandNode >> followings [
	^ followings
]

{ #category : #generated }
PsqlSelectCommandNode >> followings: anOrderedCollection [
	self setParents: self followings to: nil.
	followings := anOrderedCollection.
	self setParents: self followings to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlSelectCommandNode >> functionNames: anOrderedCollection [
	functionNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> groupBies [
	^ groupBies
]

{ #category : #generated }
PsqlSelectCommandNode >> groupBies: anOrderedCollection [
	self setParents: self groupBies to: nil.
	groupBies := anOrderedCollection.
	self setParents: self groupBies to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> having [
	^ having
]

{ #category : #generated }
PsqlSelectCommandNode >> having: aPsqlExpressionNode [
	self having notNil ifTrue: [ self having parent: nil ].
	having := aPsqlExpressionNode.
	self having notNil ifTrue: [ self having parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlSelectCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	outputNames := OrderedCollection new: 2.
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
	groupBies := OrderedCollection new: 2.
	windowNames := OrderedCollection new: 2.
	orderBies := OrderedCollection new: 2.
	operators := OrderedCollection new: 2.
	precedings := OrderedCollection new: 2.
	followings := OrderedCollection new: 2.
	partitionBies := OrderedCollection new: 2.
	usingExpressions := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlSelectCommandNode >> joinColumns [
	^ joinColumns
]

{ #category : #generated }
PsqlSelectCommandNode >> joinColumns: anOrderedCollection [
	joinColumns := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> joinConditions [
	^ joinConditions
]

{ #category : #generated }
PsqlSelectCommandNode >> joinConditions: anOrderedCollection [
	self setParents: self joinConditions to: nil.
	joinConditions := anOrderedCollection.
	self setParents: self joinConditions to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> joinUsingAliases [
	^ joinUsingAliases
]

{ #category : #generated }
PsqlSelectCommandNode >> joinUsingAliases: anOrderedCollection [
	joinUsingAliases := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> limit [
	^ limit
]

{ #category : #generated }
PsqlSelectCommandNode >> limit: aPsqlExpressionNode [
	self limit notNil ifTrue: [ self limit parent: nil ].
	limit := aPsqlExpressionNode.
	self limit notNil ifTrue: [ self limit parent: self ]
]

{ #category : #generated }
PsqlSelectCommandNode >> nodeVariables [
	^ #(#where #having #limit #offset #fetch)
]

{ #category : #generated }
PsqlSelectCommandNode >> offset [
	^ offset
]

{ #category : #generated }
PsqlSelectCommandNode >> offset: aPsqlExpressionNode [
	self offset notNil ifTrue: [ self offset parent: nil ].
	offset := aPsqlExpressionNode.
	self offset notNil ifTrue: [ self offset parent: self ]
]

{ #category : #generated }
PsqlSelectCommandNode >> operators [
	^ operators
]

{ #category : #generated }
PsqlSelectCommandNode >> operators: anOrderedCollection [
	operators := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> orderBies [
	^ orderBies
]

{ #category : #generated }
PsqlSelectCommandNode >> orderBies: anOrderedCollection [
	self setParents: self orderBies to: nil.
	orderBies := anOrderedCollection.
	self setParents: self orderBies to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> outputNames [
	^ outputNames
]

{ #category : #generated }
PsqlSelectCommandNode >> outputNames: anOrderedCollection [
	outputNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> partitionBies [
	^ partitionBies
]

{ #category : #generated }
PsqlSelectCommandNode >> partitionBies: anOrderedCollection [
	self setParents: self partitionBies to: nil.
	partitionBies := anOrderedCollection.
	self setParents: self partitionBies to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> precedings [
	^ precedings
]

{ #category : #generated }
PsqlSelectCommandNode >> precedings: anOrderedCollection [
	self setParents: self precedings to: nil.
	precedings := anOrderedCollection.
	self setParents: self precedings to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> samplingMethods [
	^ samplingMethods
]

{ #category : #generated }
PsqlSelectCommandNode >> samplingMethods: anOrderedCollection [
	samplingMethods := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> seeds [
	^ seeds
]

{ #category : #generated }
PsqlSelectCommandNode >> seeds: anOrderedCollection [
	self setParents: self seeds to: nil.
	seeds := anOrderedCollection.
	self setParents: self seeds to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> selects [
	^ selects
]

{ #category : #generated }
PsqlSelectCommandNode >> selects: anOrderedCollection [
	self setParents: self selects to: nil.
	selects := anOrderedCollection.
	self setParents: self selects to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlSelectCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> usingExpressions [
	^ usingExpressions
]

{ #category : #generated }
PsqlSelectCommandNode >> usingExpressions: anOrderedCollection [
	self setParents: self usingExpressions to: nil.
	usingExpressions := anOrderedCollection.
	self setParents: self usingExpressions to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlSelectCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> where [
	^ where
]

{ #category : #generated }
PsqlSelectCommandNode >> where: aPsqlExpressionNode [
	self where notNil ifTrue: [ self where parent: nil ].
	where := aPsqlExpressionNode.
	self where notNil ifTrue: [ self where parent: self ]
]

{ #category : #generated }
PsqlSelectCommandNode >> windowNames [
	^ windowNames
]

{ #category : #generated }
PsqlSelectCommandNode >> windowNames: anOrderedCollection [
	windowNames := anOrderedCollection
]

{ #category : #generated }
PsqlSelectCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlSelectCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]

{ #category : #generated }
PsqlSelectCommandNode >> withQueryNames [
	^ withQueryNames
]

{ #category : #generated }
PsqlSelectCommandNode >> withQueryNames: anOrderedCollection [
	withQueryNames := anOrderedCollection
]
