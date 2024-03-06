Class {
	#name : #PsqlDeleteCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
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
		'condition',
		'cursorName',
		'outputExpressions',
		'outputNames',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDeleteCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDeleteCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeleteCommand: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> aliases [
	^ aliases
]

{ #category : #generated }
PsqlDeleteCommandNode >> aliases: anOrderedCollection [
	aliases := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> args [
	^ args
]

{ #category : #generated }
PsqlDeleteCommandNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> columnAliases [
	^ columnAliases
]

{ #category : #generated }
PsqlDeleteCommandNode >> columnAliases: anOrderedCollection [
	columnAliases := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> columnDefinitions [
	^ columnDefinitions
]

{ #category : #generated }
PsqlDeleteCommandNode >> columnDefinitions: anOrderedCollection [
	columnDefinitions := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> compositeNodeVariables [
	^ #(#tableNames #args #seeds #selects #joinConditions #outputExpressions #withQueries)
]

{ #category : #generated }
PsqlDeleteCommandNode >> compositeTokenVariables [
	^ #(#_s #aliases #columnAliases #samplingMethods #withQueryNames #functionNames #columnDefinitions #joinColumns #joinUsingAliases #outputNames)
]

{ #category : #generated }
PsqlDeleteCommandNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlDeleteCommandNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PsqlDeleteCommandNode >> cursorName [
	^ cursorName
]

{ #category : #generated }
PsqlDeleteCommandNode >> cursorName: aSmaCCToken [
	cursorName := aSmaCCToken
]

{ #category : #generated }
PsqlDeleteCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlDeleteCommandNode >> functionNames: anOrderedCollection [
	functionNames := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlDeleteCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
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
	outputExpressions := OrderedCollection new: 2.
	outputNames := OrderedCollection new: 2.
	withQueries := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinColumns [
	^ joinColumns
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinColumns: anOrderedCollection [
	joinColumns := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinConditions [
	^ joinConditions
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinConditions: anOrderedCollection [
	self setParents: self joinConditions to: nil.
	joinConditions := anOrderedCollection.
	self setParents: self joinConditions to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinUsingAliases [
	^ joinUsingAliases
]

{ #category : #generated }
PsqlDeleteCommandNode >> joinUsingAliases: anOrderedCollection [
	joinUsingAliases := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
PsqlDeleteCommandNode >> outputExpressions [
	^ outputExpressions
]

{ #category : #generated }
PsqlDeleteCommandNode >> outputExpressions: anOrderedCollection [
	self setParents: self outputExpressions to: nil.
	outputExpressions := anOrderedCollection.
	self setParents: self outputExpressions to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> outputNames [
	^ outputNames
]

{ #category : #generated }
PsqlDeleteCommandNode >> outputNames: anOrderedCollection [
	outputNames := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> samplingMethods [
	^ samplingMethods
]

{ #category : #generated }
PsqlDeleteCommandNode >> samplingMethods: anOrderedCollection [
	samplingMethods := anOrderedCollection
]

{ #category : #generated }
PsqlDeleteCommandNode >> seeds [
	^ seeds
]

{ #category : #generated }
PsqlDeleteCommandNode >> seeds: anOrderedCollection [
	self setParents: self seeds to: nil.
	seeds := anOrderedCollection.
	self setParents: self seeds to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> selects [
	^ selects
]

{ #category : #generated }
PsqlDeleteCommandNode >> selects: anOrderedCollection [
	self setParents: self selects to: nil.
	selects := anOrderedCollection.
	self setParents: self selects to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlDeleteCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> tokenVariables [
	^ #(#cursorName)
]

{ #category : #generated }
PsqlDeleteCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlDeleteCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]

{ #category : #generated }
PsqlDeleteCommandNode >> withQueryNames [
	^ withQueryNames
]

{ #category : #generated }
PsqlDeleteCommandNode >> withQueryNames: anOrderedCollection [
	withQueryNames := anOrderedCollection
]
