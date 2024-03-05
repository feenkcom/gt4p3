Class {
	#name : #PsqlCreateTypeCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'attributeNames',
		'dataTypes',
		'collations',
		'labels',
		'subtype',
		'canonicalFunction',
		'subtypeDiffFunction',
		'multirangeTypeName',
		'subtypeOperatorClass',
		'inputFunction',
		'outputFunction',
		'typeModifierInputFunction',
		'typeModifierOutputFunction',
		'analyzeFunction',
		'subscriptFunction',
		'internalLength',
		'alignment',
		'storage',
		'likeType',
		'category',
		'preferred',
		'default',
		'element',
		'delimiter',
		'collatable',
		'sendFunction',
		'receiveFunction'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateTypeCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateTypeCommand: self
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> alignment [
	^ alignment
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> alignment: aSmaCCToken [
	alignment := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> analyzeFunction [
	^ analyzeFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> analyzeFunction: aSmaCCToken [
	analyzeFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> attributeNames [
	^ attributeNames
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> attributeNames: anOrderedCollection [
	attributeNames := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> canonicalFunction [
	^ canonicalFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> canonicalFunction: aSmaCCToken [
	canonicalFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> category [
	^ category
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> category: aSmaCCToken [
	category := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collatable [
	^ collatable
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collatable: aPsqlBooleanNode [
	self collatable notNil ifTrue: [ self collatable parent: nil ].
	collatable := aPsqlBooleanNode.
	self collatable notNil ifTrue: [ self collatable parent: self ]
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collations [
	^ collations
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collations: anOrderedCollection [
	self setParents: self collations to: nil.
	collations := anOrderedCollection.
	self setParents: self collations to: self
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> compositeNodeVariables [
	^ #(#dataTypes #collations)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> compositeTokenVariables [
	^ #(#_s #attributeNames #labels)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> dataTypes [
	^ dataTypes
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> dataTypes: anOrderedCollection [
	self setParents: self dataTypes to: nil.
	dataTypes := anOrderedCollection.
	self setParents: self dataTypes to: self
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> default [
	^ default
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> default: aPsqlExpressionNode [
	self default notNil ifTrue: [ self default parent: nil ].
	default := aPsqlExpressionNode.
	self default notNil ifTrue: [ self default parent: self ]
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> delimiter [
	^ delimiter
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> delimiter: aSmaCCToken [
	delimiter := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> element [
	^ element
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> element: aPsqlBooleanNode [
	self element notNil ifTrue: [ self element parent: nil ].
	element := aPsqlBooleanNode.
	self element notNil ifTrue: [ self element parent: self ]
]

{ #category : #'generated-initialize-release' }
PsqlCreateTypeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	attributeNames := OrderedCollection new: 2.
	dataTypes := OrderedCollection new: 2.
	collations := OrderedCollection new: 2.
	labels := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> inputFunction [
	^ inputFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> inputFunction: aSmaCCToken [
	inputFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> internalLength [
	^ internalLength
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> internalLength: aPsqlNumberNode [
	self internalLength notNil ifTrue: [ self internalLength parent: nil ].
	internalLength := aPsqlNumberNode.
	self internalLength notNil ifTrue: [ self internalLength parent: self ]
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> labels [
	^ labels
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> labels: anOrderedCollection [
	labels := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> likeType [
	^ likeType
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> likeType: aSmaCCToken [
	likeType := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> multirangeTypeName [
	^ multirangeTypeName
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> multirangeTypeName: aSmaCCToken [
	multirangeTypeName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> nodeVariables [
	^ #(#name #internalLength #preferred #default #element #collatable)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> outputFunction [
	^ outputFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> outputFunction: aSmaCCToken [
	outputFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> preferred [
	^ preferred
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> preferred: aPsqlBooleanNode [
	self preferred notNil ifTrue: [ self preferred parent: nil ].
	preferred := aPsqlBooleanNode.
	self preferred notNil ifTrue: [ self preferred parent: self ]
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> receiveFunction [
	^ receiveFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> receiveFunction: aSmaCCToken [
	receiveFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> sendFunction [
	^ sendFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> sendFunction: aSmaCCToken [
	sendFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> storage [
	^ storage
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> storage: aSmaCCToken [
	storage := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subscriptFunction [
	^ subscriptFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subscriptFunction: aSmaCCToken [
	subscriptFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtype [
	^ subtype
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtype: aSmaCCToken [
	subtype := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeDiffFunction [
	^ subtypeDiffFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeDiffFunction: aSmaCCToken [
	subtypeDiffFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeOperatorClass [
	^ subtypeOperatorClass
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeOperatorClass: aSmaCCToken [
	subtypeOperatorClass := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> tokenVariables [
	^ #(#subtype #canonicalFunction #subtypeDiffFunction #multirangeTypeName #subtypeOperatorClass #inputFunction #outputFunction #typeModifierInputFunction #typeModifierOutputFunction #analyzeFunction #subscriptFunction #alignment #storage #likeType #category #delimiter #sendFunction #receiveFunction)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierInputFunction [
	^ typeModifierInputFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierInputFunction: aSmaCCToken [
	typeModifierInputFunction := aSmaCCToken
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierOutputFunction [
	^ typeModifierOutputFunction
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierOutputFunction: aSmaCCToken [
	typeModifierOutputFunction := aSmaCCToken
]
