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
		'subtypes',
		'subtypeOperatorClasses',
		'canonicalFunctions',
		'subtypeDiffFunctions',
		'multirangeTypeNames',
		'inputFunctions',
		'outputFunctions',
		'receiveFunctions',
		'sendFunctions',
		'typeModifierInputFunctions',
		'typeModifierOutputFunctions',
		'analyzeFunctions',
		'subscriptFunctions',
		'internalLengths',
		'alignments',
		'storages',
		'likeTypes',
		'categories',
		'preferreds',
		'defaults',
		'elements',
		'delimiters',
		'collatables'
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
PsqlCreateTypeCommandNode >> alignments [
	^ alignments
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> alignments: anOrderedCollection [
	alignments := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> analyzeFunctions [
	^ analyzeFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> analyzeFunctions: anOrderedCollection [
	analyzeFunctions := anOrderedCollection
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
PsqlCreateTypeCommandNode >> canonicalFunctions [
	^ canonicalFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> canonicalFunctions: anOrderedCollection [
	canonicalFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> categories [
	^ categories
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> categories: anOrderedCollection [
	categories := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collatables [
	^ collatables
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> collatables: anOrderedCollection [
	self setParents: self collatables to: nil.
	collatables := anOrderedCollection.
	self setParents: self collatables to: self
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
	^ #(#dataTypes #collations #internalLengths #preferreds #defaults #elements #collatables)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> compositeTokenVariables [
	^ #(#_s #attributeNames #labels #subtypes #subtypeOperatorClasses #canonicalFunctions #subtypeDiffFunctions #multirangeTypeNames #inputFunctions #outputFunctions #receiveFunctions #sendFunctions #typeModifierInputFunctions #typeModifierOutputFunctions #analyzeFunctions #subscriptFunctions #alignments #storages #likeTypes #categories #delimiters)
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
PsqlCreateTypeCommandNode >> defaults [
	^ defaults
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> defaults: anOrderedCollection [
	self setParents: self defaults to: nil.
	defaults := anOrderedCollection.
	self setParents: self defaults to: self
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> delimiters [
	^ delimiters
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> delimiters: anOrderedCollection [
	delimiters := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> elements [
	^ elements
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #'generated-initialize-release' }
PsqlCreateTypeCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	attributeNames := OrderedCollection new: 2.
	dataTypes := OrderedCollection new: 2.
	collations := OrderedCollection new: 2.
	labels := OrderedCollection new: 2.
	subtypes := OrderedCollection new: 2.
	subtypeOperatorClasses := OrderedCollection new: 2.
	canonicalFunctions := OrderedCollection new: 2.
	subtypeDiffFunctions := OrderedCollection new: 2.
	multirangeTypeNames := OrderedCollection new: 2.
	inputFunctions := OrderedCollection new: 2.
	outputFunctions := OrderedCollection new: 2.
	receiveFunctions := OrderedCollection new: 2.
	sendFunctions := OrderedCollection new: 2.
	typeModifierInputFunctions := OrderedCollection new: 2.
	typeModifierOutputFunctions := OrderedCollection new: 2.
	analyzeFunctions := OrderedCollection new: 2.
	subscriptFunctions := OrderedCollection new: 2.
	internalLengths := OrderedCollection new: 2.
	alignments := OrderedCollection new: 2.
	storages := OrderedCollection new: 2.
	likeTypes := OrderedCollection new: 2.
	categories := OrderedCollection new: 2.
	preferreds := OrderedCollection new: 2.
	defaults := OrderedCollection new: 2.
	elements := OrderedCollection new: 2.
	delimiters := OrderedCollection new: 2.
	collatables := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> inputFunctions [
	^ inputFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> inputFunctions: anOrderedCollection [
	inputFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> internalLengths [
	^ internalLengths
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> internalLengths: anOrderedCollection [
	self setParents: self internalLengths to: nil.
	internalLengths := anOrderedCollection.
	self setParents: self internalLengths to: self
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
PsqlCreateTypeCommandNode >> likeTypes [
	^ likeTypes
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> likeTypes: anOrderedCollection [
	likeTypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> multirangeTypeNames [
	^ multirangeTypeNames
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> multirangeTypeNames: anOrderedCollection [
	multirangeTypeNames := anOrderedCollection
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
	^ #(#name)
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> outputFunctions [
	^ outputFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> outputFunctions: anOrderedCollection [
	outputFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> preferreds [
	^ preferreds
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> preferreds: anOrderedCollection [
	self setParents: self preferreds to: nil.
	preferreds := anOrderedCollection.
	self setParents: self preferreds to: self
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> receiveFunctions [
	^ receiveFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> receiveFunctions: anOrderedCollection [
	receiveFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> sendFunctions [
	^ sendFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> sendFunctions: anOrderedCollection [
	sendFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> storages [
	^ storages
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> storages: anOrderedCollection [
	storages := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subscriptFunctions [
	^ subscriptFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subscriptFunctions: anOrderedCollection [
	subscriptFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeDiffFunctions [
	^ subtypeDiffFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeDiffFunctions: anOrderedCollection [
	subtypeDiffFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeOperatorClasses [
	^ subtypeOperatorClasses
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypeOperatorClasses: anOrderedCollection [
	subtypeOperatorClasses := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypes [
	^ subtypes
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> subtypes: anOrderedCollection [
	subtypes := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierInputFunctions [
	^ typeModifierInputFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierInputFunctions: anOrderedCollection [
	typeModifierInputFunctions := anOrderedCollection
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierOutputFunctions [
	^ typeModifierOutputFunctions
]

{ #category : #generated }
PsqlCreateTypeCommandNode >> typeModifierOutputFunctions: anOrderedCollection [
	typeModifierOutputFunctions := anOrderedCollection
]
