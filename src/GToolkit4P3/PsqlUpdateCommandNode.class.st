Class {
	#name : #PsqlUpdateCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'tableNames',
		'aliases',
		'columnNames',
		'values',
		'selects',
		'columnAliases',
		'samplingMethods',
		'args',
		'seeds',
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
		'subSelect',
		'withQueries'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlUpdateCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlUpdateCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUpdateCommand: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> aliases [
	^ aliases
]

{ #category : #generated }
PsqlUpdateCommandNode >> aliases: anOrderedCollection [
	aliases := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> args [
	^ args
]

{ #category : #generated }
PsqlUpdateCommandNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnAliases [
	^ columnAliases
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnAliases: anOrderedCollection [
	columnAliases := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnDefinitions [
	^ columnDefinitions
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnDefinitions: anOrderedCollection [
	columnDefinitions := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlUpdateCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> compositeNodeVariables [
	^ #(#tableNames #columnNames #values #selects #args #seeds #functionNames #joinConditions #outputExpressions #withQueries)
]

{ #category : #generated }
PsqlUpdateCommandNode >> compositeTokenVariables [
	^ #(#_s #aliases #columnAliases #samplingMethods #withQueryNames #columnDefinitions #joinColumns #joinUsingAliases #outputNames)
]

{ #category : #generated }
PsqlUpdateCommandNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlUpdateCommandNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PsqlUpdateCommandNode >> cursorName [
	^ cursorName
]

{ #category : #generated }
PsqlUpdateCommandNode >> cursorName: aSmaCCToken [
	cursorName := aSmaCCToken
]

{ #category : #generated }
PsqlUpdateCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlUpdateCommandNode >> functionNames: anOrderedCollection [
	self setParents: self functionNames to: nil.
	functionNames := anOrderedCollection.
	self setParents: self functionNames to: self
]

{ #category : #'generated-initialize-release' }
PsqlUpdateCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	tableNames := OrderedCollection new: 2.
	aliases := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	selects := OrderedCollection new: 2.
	columnAliases := OrderedCollection new: 2.
	samplingMethods := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
	seeds := OrderedCollection new: 2.
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
PsqlUpdateCommandNode >> joinColumns [
	^ joinColumns
]

{ #category : #generated }
PsqlUpdateCommandNode >> joinColumns: anOrderedCollection [
	joinColumns := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> joinConditions [
	^ joinConditions
]

{ #category : #generated }
PsqlUpdateCommandNode >> joinConditions: anOrderedCollection [
	self setParents: self joinConditions to: nil.
	joinConditions := anOrderedCollection.
	self setParents: self joinConditions to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> joinUsingAliases [
	^ joinUsingAliases
]

{ #category : #generated }
PsqlUpdateCommandNode >> joinUsingAliases: anOrderedCollection [
	joinUsingAliases := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> nodeVariables [
	^ #(#condition #subSelect)
]

{ #category : #generated }
PsqlUpdateCommandNode >> outputExpressions [
	^ outputExpressions
]

{ #category : #generated }
PsqlUpdateCommandNode >> outputExpressions: anOrderedCollection [
	self setParents: self outputExpressions to: nil.
	outputExpressions := anOrderedCollection.
	self setParents: self outputExpressions to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> outputNames [
	^ outputNames
]

{ #category : #generated }
PsqlUpdateCommandNode >> outputNames: anOrderedCollection [
	outputNames := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> samplingMethods [
	^ samplingMethods
]

{ #category : #generated }
PsqlUpdateCommandNode >> samplingMethods: anOrderedCollection [
	samplingMethods := anOrderedCollection
]

{ #category : #generated }
PsqlUpdateCommandNode >> seeds [
	^ seeds
]

{ #category : #generated }
PsqlUpdateCommandNode >> seeds: anOrderedCollection [
	self setParents: self seeds to: nil.
	seeds := anOrderedCollection.
	self setParents: self seeds to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> selects [
	^ selects
]

{ #category : #generated }
PsqlUpdateCommandNode >> selects: anOrderedCollection [
	self setParents: self selects to: nil.
	selects := anOrderedCollection.
	self setParents: self selects to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> subSelect [
	^ subSelect
]

{ #category : #generated }
PsqlUpdateCommandNode >> subSelect: aPsqlSelectCommandNode [
	self subSelect notNil ifTrue: [ self subSelect parent: nil ].
	subSelect := aPsqlSelectCommandNode.
	self subSelect notNil ifTrue: [ self subSelect parent: self ]
]

{ #category : #generated }
PsqlUpdateCommandNode >> tableNames [
	^ tableNames
]

{ #category : #generated }
PsqlUpdateCommandNode >> tableNames: anOrderedCollection [
	self setParents: self tableNames to: nil.
	tableNames := anOrderedCollection.
	self setParents: self tableNames to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> tokenVariables [
	^ #(#cursorName)
]

{ #category : #generated }
PsqlUpdateCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlUpdateCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> withQueries [
	^ withQueries
]

{ #category : #generated }
PsqlUpdateCommandNode >> withQueries: anOrderedCollection [
	self setParents: self withQueries to: nil.
	withQueries := anOrderedCollection.
	self setParents: self withQueries to: self
]

{ #category : #generated }
PsqlUpdateCommandNode >> withQueryNames [
	^ withQueryNames
]

{ #category : #generated }
PsqlUpdateCommandNode >> withQueryNames: anOrderedCollection [
	withQueryNames := anOrderedCollection
]
