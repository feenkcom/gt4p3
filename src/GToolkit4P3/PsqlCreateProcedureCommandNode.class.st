Class {
	#name : #PsqlCreateProcedureCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'langNames',
		'typeNames',
		'configurationParameters',
		'values',
		'definitions',
		'objFiles',
		'linkSymbols',
		'sqlBodies',
		'argNames',
		'argTypes',
		'defaultExpressions'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateProcedureCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateProcedureCommand: self
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> compositeNodeVariables [
	^ #(#values #sqlBodies #argTypes #defaultExpressions)
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> compositeTokenVariables [
	^ #(#_s #langNames #typeNames #configurationParameters #definitions #objFiles #linkSymbols #argNames)
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> configurationParameters [
	^ configurationParameters
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> configurationParameters: anOrderedCollection [
	configurationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> defaultExpressions [
	^ defaultExpressions
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> defaultExpressions: anOrderedCollection [
	self setParents: self defaultExpressions to: nil.
	defaultExpressions := anOrderedCollection.
	self setParents: self defaultExpressions to: self
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> definitions [
	^ definitions
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> definitions: anOrderedCollection [
	definitions := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlCreateProcedureCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	langNames := OrderedCollection new: 2.
	typeNames := OrderedCollection new: 2.
	configurationParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	definitions := OrderedCollection new: 2.
	objFiles := OrderedCollection new: 2.
	linkSymbols := OrderedCollection new: 2.
	sqlBodies := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
	defaultExpressions := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> langNames [
	^ langNames
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> langNames: anOrderedCollection [
	langNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> linkSymbols [
	^ linkSymbols
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> linkSymbols: anOrderedCollection [
	linkSymbols := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> objFiles [
	^ objFiles
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> objFiles: anOrderedCollection [
	objFiles := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> sqlBodies [
	^ sqlBodies
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> sqlBodies: anOrderedCollection [
	self setParents: self sqlBodies to: nil.
	sqlBodies := anOrderedCollection.
	self setParents: self sqlBodies to: self
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> typeNames [
	^ typeNames
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> typeNames: anOrderedCollection [
	typeNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateProcedureCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
