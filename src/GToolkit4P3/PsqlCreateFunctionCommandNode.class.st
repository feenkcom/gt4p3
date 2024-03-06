Class {
	#name : #PsqlCreateFunctionCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'rettype',
		'columnNames',
		'columnTypes',
		'langNames',
		'typeNames',
		'executionCosts',
		'resultRowses',
		'supportFunctions',
		'configurationParameters',
		'values',
		'aSTokens',
		'definitions',
		'objFiles',
		'commaTokens',
		'linkSymbols',
		'sqlBodies',
		'argNames',
		'argTypes',
		'defaultExpressions'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateFunctionCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> aSTokens [
	^ aSTokens
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> aSTokens: anOrderedCollection [
	aSTokens := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateFunctionCommand: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> columnTypes [
	^ columnTypes
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> columnTypes: anOrderedCollection [
	self setParents: self columnTypes to: nil.
	columnTypes := anOrderedCollection.
	self setParents: self columnTypes to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> compositeNodeVariables [
	^ #(#columnNames #columnTypes #executionCosts #resultRowses #supportFunctions #values #definitions #sqlBodies #argTypes #defaultExpressions)
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> compositeTokenVariables [
	^ #(#_s #langNames #typeNames #configurationParameters #aSTokens #objFiles #commaTokens #linkSymbols #argNames)
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> configurationParameters [
	^ configurationParameters
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> configurationParameters: anOrderedCollection [
	configurationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> definitions [
	^ definitions
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> executionCosts [
	^ executionCosts
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> executionCosts: anOrderedCollection [
	self setParents: self executionCosts to: nil.
	executionCosts := anOrderedCollection.
	self setParents: self executionCosts to: self
]

{ #category : #'generated-initialize-release' }
PsqlCreateFunctionCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	columnTypes := OrderedCollection new: 2.
	langNames := OrderedCollection new: 2.
	typeNames := OrderedCollection new: 2.
	executionCosts := OrderedCollection new: 2.
	resultRowses := OrderedCollection new: 2.
	supportFunctions := OrderedCollection new: 2.
	configurationParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	aSTokens := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
	objFiles := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	linkSymbols := OrderedCollection new: 2.
	sqlBodies := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> langNames [
	^ langNames
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> langNames: anOrderedCollection [
	langNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> linkSymbols [
	^ linkSymbols
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> linkSymbols: anOrderedCollection [
	linkSymbols := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> nodeVariables [
	^ #(#name #rettype)
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> objFiles [
	^ objFiles
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> objFiles: anOrderedCollection [
	objFiles := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> resultRowses [
	^ resultRowses
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> resultRowses: anOrderedCollection [
	self setParents: self resultRowses to: nil.
	resultRowses := anOrderedCollection.
	self setParents: self resultRowses to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> rettype [
	^ rettype
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> rettype: aPsqlProgramNode [
	self rettype notNil ifTrue: [ self rettype parent: nil ].
	rettype := aPsqlProgramNode.
	self rettype notNil ifTrue: [ self rettype parent: self ]
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> sqlBodies [
	^ sqlBodies
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> sqlBodies: anOrderedCollection [
	self setParents: self sqlBodies to: nil.
	sqlBodies := anOrderedCollection.
	self setParents: self sqlBodies to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> supportFunctions [
	^ supportFunctions
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> supportFunctions: anOrderedCollection [
	self setParents: self supportFunctions to: nil.
	supportFunctions := anOrderedCollection.
	self setParents: self supportFunctions to: self
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> typeNames [
	^ typeNames
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> typeNames: anOrderedCollection [
	typeNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateFunctionCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
