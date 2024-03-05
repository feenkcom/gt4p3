Class {
	#name : #PsqlCreateTriggerCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'columnNames',
		'events',
		'tableName',
		'referencedTableName',
		'transitionRelationNames',
		'condition',
		'functionName',
		'args'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTriggerCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTriggerCommand: self
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> args [
	^ args
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> args: anOrderedCollection [
	self setParents: self args to: nil.
	args := anOrderedCollection.
	self setParents: self args to: self
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> columnNames [
	^ columnNames
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> columnNames: anOrderedCollection [
	self setParents: self columnNames to: nil.
	columnNames := anOrderedCollection.
	self setParents: self columnNames to: self
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> compositeNodeVariables [
	^ #(#columnNames #args)
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> compositeTokenVariables [
	^ #(#_s #events #transitionRelationNames)
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> events [
	^ events
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> events: anOrderedCollection [
	events := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> functionName [
	^ functionName
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> functionName: aSmaCCToken [
	functionName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateTriggerCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	columnNames := OrderedCollection new: 2.
	events := OrderedCollection new: 2.
	transitionRelationNames := OrderedCollection new: 2.
	args := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> nodeVariables [
	^ #(#name #tableName #condition)
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> referencedTableName [
	^ referencedTableName
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> referencedTableName: aSmaCCToken [
	referencedTableName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> tokenVariables [
	^ #(#referencedTableName #functionName)
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> transitionRelationNames [
	^ transitionRelationNames
]

{ #category : #generated }
PsqlCreateTriggerCommandNode >> transitionRelationNames: anOrderedCollection [
	transitionRelationNames := anOrderedCollection
]
