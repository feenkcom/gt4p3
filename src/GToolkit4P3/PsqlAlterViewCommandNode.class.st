Class {
	#name : #PsqlAlterViewCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'columnName',
		'defaultExpression',
		'newOwner',
		'newColumnName',
		'newName',
		'newSchemaName',
		'viewOptionNames',
		'viewOptionValues'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterViewCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterViewCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterViewCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterViewCommand: self
]

{ #category : #generated }
PsqlAlterViewCommandNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterViewCommandNode >> columnName: aPsqlExpressionNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlExpressionNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterViewCommandNode >> compositeNodeVariables [
	^ #(#viewOptionValues)
]

{ #category : #generated }
PsqlAlterViewCommandNode >> compositeTokenVariables [
	^ #(#_s #viewOptionNames)
]

{ #category : #generated }
PsqlAlterViewCommandNode >> defaultExpression [
	^ defaultExpression
]

{ #category : #generated }
PsqlAlterViewCommandNode >> defaultExpression: aPsqlExpressionNode [
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: nil ].
	defaultExpression := aPsqlExpressionNode.
	self defaultExpression notNil ifTrue: [ self defaultExpression parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlAlterViewCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	viewOptionNames := OrderedCollection new: 2.
	viewOptionValues := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterViewCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlAlterViewCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newColumnName [
	^ newColumnName
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newColumnName: aSmaCCToken [
	newColumnName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newName [
	^ newName
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newName: aSmaCCToken [
	newName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newSchemaName [
	^ newSchemaName
]

{ #category : #generated }
PsqlAlterViewCommandNode >> newSchemaName: aSmaCCToken [
	newSchemaName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterViewCommandNode >> nodeVariables [
	^ #(#name #columnName #defaultExpression)
]

{ #category : #generated }
PsqlAlterViewCommandNode >> tokenVariables [
	^ #(#newOwner #newColumnName #newName #newSchemaName)
]

{ #category : #generated }
PsqlAlterViewCommandNode >> viewOptionNames [
	^ viewOptionNames
]

{ #category : #generated }
PsqlAlterViewCommandNode >> viewOptionNames: anOrderedCollection [
	viewOptionNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterViewCommandNode >> viewOptionValues [
	^ viewOptionValues
]

{ #category : #generated }
PsqlAlterViewCommandNode >> viewOptionValues: anOrderedCollection [
	self setParents: self viewOptionValues to: nil.
	viewOptionValues := anOrderedCollection.
	self setParents: self viewOptionValues to: self
]
