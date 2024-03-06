Class {
	#name : #PsqlCreateOperatorClassCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'dataType',
		'indexMethod',
		'strategyNumbers',
		'operatorNames',
		'opTypes',
		'sortFamilyNames',
		'supportNumbers',
		'functionNames',
		'argumentTypes',
		'storageTypes',
		'familyName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateOperatorClassCommand: self
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> argumentTypes [
	^ argumentTypes
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> argumentTypes: anOrderedCollection [
	argumentTypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> compositeNodeVariables [
	^ #(#strategyNumbers #supportNumbers #storageTypes)
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> compositeTokenVariables [
	^ #(#_s #operatorNames #opTypes #sortFamilyNames #functionNames #argumentTypes)
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> dataType [
	^ dataType
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> dataType: aPsqlProgramNode [
	self dataType notNil ifTrue: [ self dataType parent: nil ].
	dataType := aPsqlProgramNode.
	self dataType notNil ifTrue: [ self dataType parent: self ]
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> familyName [
	^ familyName
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> familyName: aSmaCCToken [
	familyName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> functionNames [
	^ functionNames
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> functionNames: anOrderedCollection [
	functionNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> indexMethod [
	^ indexMethod
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> indexMethod: aSmaCCToken [
	indexMethod := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateOperatorClassCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	strategyNumbers := OrderedCollection new: 2.
	operatorNames := OrderedCollection new: 2.
	opTypes := OrderedCollection new: 2.
	sortFamilyNames := OrderedCollection new: 2.
	supportNumbers := OrderedCollection new: 2.
	functionNames := OrderedCollection new: 2.
	argumentTypes := OrderedCollection new: 2.
	storageTypes := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> nodeVariables [
	^ #(#name #dataType)
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> opTypes [
	^ opTypes
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> opTypes: anOrderedCollection [
	opTypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> operatorNames [
	^ operatorNames
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> operatorNames: anOrderedCollection [
	operatorNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> sortFamilyNames [
	^ sortFamilyNames
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> sortFamilyNames: anOrderedCollection [
	sortFamilyNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> storageTypes [
	^ storageTypes
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> storageTypes: anOrderedCollection [
	self setParents: self storageTypes to: nil.
	storageTypes := anOrderedCollection.
	self setParents: self storageTypes to: self
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> strategyNumbers [
	^ strategyNumbers
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> strategyNumbers: anOrderedCollection [
	self setParents: self strategyNumbers to: nil.
	strategyNumbers := anOrderedCollection.
	self setParents: self strategyNumbers to: self
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> supportNumbers [
	^ supportNumbers
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> supportNumbers: anOrderedCollection [
	self setParents: self supportNumbers to: nil.
	supportNumbers := anOrderedCollection.
	self setParents: self supportNumbers to: self
]

{ #category : #generated }
PsqlCreateOperatorClassCommandNode >> tokenVariables [
	^ #(#indexMethod #familyName)
]
