Class {
	#name : #PsqlAlterOperatorFamilyCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'indexMethod',
		'strategyNumbers',
		'operatorNames',
		'opTypes',
		'sortFamilyNames',
		'supportNumbers',
		'functionNames',
		'argumentTypes',
		'newName',
		'newOwner',
		'newSchemaName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterOperatorFamilyCommand: self
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> argumentTypes [
	^ argumentTypes
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> argumentTypes: anOrderedCollection [
	argumentTypes := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> compositeNodeVariables [
	^ #(#strategyNumbers #supportNumbers #functionNames)
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> compositeTokenVariables [
	^ #(#_s #operatorNames #opTypes #sortFamilyNames #argumentTypes)
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> functionNames: anOrderedCollection [
	self setParents: self functionNames to: nil.
	functionNames := anOrderedCollection.
	self setParents: self functionNames to: self
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterOperatorFamilyCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	strategyNumbers := OrderedCollection new: 2.
	operatorNames := OrderedCollection new: 2.
	opTypes := OrderedCollection new: 2.
	sortFamilyNames := OrderedCollection new: 2.
	supportNumbers := OrderedCollection new: 2.
	functionNames := OrderedCollection new: 2.
	argumentTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> opTypes [
	^ opTypes
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> opTypes: anOrderedCollection [
	opTypes := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> operatorNames [
	^ operatorNames
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> operatorNames: anOrderedCollection [
	operatorNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> sortFamilyNames [
	^ sortFamilyNames
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> sortFamilyNames: anOrderedCollection [
	sortFamilyNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> strategyNumbers [
	^ strategyNumbers
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> strategyNumbers: anOrderedCollection [
	self setParents: self strategyNumbers to: nil.
	strategyNumbers := anOrderedCollection.
	self setParents: self strategyNumbers to: self
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> supportNumbers [
	^ supportNumbers
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> supportNumbers: anOrderedCollection [
	self setParents: self supportNumbers to: nil.
	supportNumbers := anOrderedCollection.
	self setParents: self supportNumbers to: self
]

{ #category : #generated }
PsqlAlterOperatorFamilyCommandNode >> tokenVariables [
	^ #(#indexMethod #newName #newOwner #newSchemaName)
]
