Class {
	#name : #PsqlCreateDatabaseCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'name',
		'template',
		'encoding',
		'strategy',
		'locale',
		'lcCollate',
		'lcCtype',
		'icuRuleses',
		'localeProvider',
		'collationVersion',
		'tablespaceName',
		'values',
		'oid',
		'userName'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateDatabaseCommand: self
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> collationVersion [
	^ collationVersion
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> collationVersion: aSmaCCToken [
	collationVersion := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> compositeTokenVariables [
	^ #(#_s #icuRuleses)
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> encoding [
	^ encoding
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> encoding: aPsqlExpressionNode [
	self encoding notNil ifTrue: [ self encoding parent: nil ].
	encoding := aPsqlExpressionNode.
	self encoding notNil ifTrue: [ self encoding parent: self ]
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> icuRuleses [
	^ icuRuleses
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> icuRuleses: anOrderedCollection [
	icuRuleses := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PsqlCreateDatabaseCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	icuRuleses := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> lcCollate [
	^ lcCollate
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> lcCollate: aSmaCCToken [
	lcCollate := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> lcCtype [
	^ lcCtype
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> lcCtype: aSmaCCToken [
	lcCtype := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> locale [
	^ locale
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> locale: aSmaCCToken [
	locale := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> localeProvider [
	^ localeProvider
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> localeProvider: aSmaCCToken [
	localeProvider := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> name [
	^ name
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> name: aPsqlQualifiedNameNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPsqlQualifiedNameNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> nodeVariables [
	^ #(#name #encoding #oid)
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> oid [
	^ oid
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> oid: aPsqlNumberNode [
	self oid notNil ifTrue: [ self oid parent: nil ].
	oid := aPsqlNumberNode.
	self oid notNil ifTrue: [ self oid parent: self ]
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> strategy [
	^ strategy
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> strategy: aSmaCCToken [
	strategy := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> tablespaceName [
	^ tablespaceName
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> tablespaceName: aSmaCCToken [
	tablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> template [
	^ template
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> template: aSmaCCToken [
	template := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> tokenVariables [
	^ #(#template #strategy #locale #lcCollate #lcCtype #localeProvider #collationVersion #tablespaceName #userName)
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> userName [
	^ userName
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> userName: aSmaCCToken [
	userName := aSmaCCToken
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateDatabaseCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
