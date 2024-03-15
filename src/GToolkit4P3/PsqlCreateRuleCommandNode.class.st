Class {
	#name : #PsqlCreateRuleCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'event',
		'tableName',
		'commands',
		'condition'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateRuleCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateRuleCommand: self
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> commands [
	^ commands
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> commands: anOrderedCollection [
	self setParents: self commands to: nil.
	commands := anOrderedCollection.
	self setParents: self commands to: self
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> compositeNodeVariables [
	^ #(#commands)
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> condition [
	^ condition
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> condition: aPsqlExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aPsqlExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> event [
	^ event
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> event: aSmaCCToken [
	event := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlCreateRuleCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	commands := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> nodeVariables [
	^ #(#name #tableName #condition)
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateRuleCommandNode >> tokenVariables [
	^ #(#event)
]
