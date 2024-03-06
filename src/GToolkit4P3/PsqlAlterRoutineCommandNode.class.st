Class {
	#name : #PsqlAlterRoutineCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'executionCosts',
		'resultRowses',
		'configurationParameters',
		'values',
		'argNames',
		'argTypes',
		'newName',
		'newOwner',
		'newSchemaName',
		'extensionName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterRoutineCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterRoutineCommand: self
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> argNames [
	^ argNames
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> argNames: anOrderedCollection [
	argNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> argTypes [
	^ argTypes
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> argTypes: anOrderedCollection [
	self setParents: self argTypes to: nil.
	argTypes := anOrderedCollection.
	self setParents: self argTypes to: self
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> compositeNodeVariables [
	^ #(#executionCosts #resultRowses #values #argTypes)
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> compositeTokenVariables [
	^ #(#_s #configurationParameters #argNames)
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> configurationParameters [
	^ configurationParameters
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> configurationParameters: anOrderedCollection [
	configurationParameters := anOrderedCollection
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> executionCosts [
	^ executionCosts
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> executionCosts: anOrderedCollection [
	self setParents: self executionCosts to: nil.
	executionCosts := anOrderedCollection.
	self setParents: self executionCosts to: self
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> extensionName [
	^ extensionName
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> extensionName: aSmaCCToken [
	extensionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterRoutineCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	executionCosts := OrderedCollection new: 2.
	resultRowses := OrderedCollection new: 2.
	configurationParameters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	argNames := OrderedCollection new: 2.
	argTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> resultRowses [
	^ resultRowses
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> resultRowses: anOrderedCollection [
	self setParents: self resultRowses to: nil.
	resultRowses := anOrderedCollection.
	self setParents: self resultRowses to: self
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> tokenVariables [
	^ #(#newName #newOwner #newSchemaName #extensionName)
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterRoutineCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
