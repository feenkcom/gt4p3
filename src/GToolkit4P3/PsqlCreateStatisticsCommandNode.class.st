Class {
	#name : #PsqlCreateStatisticsCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'values',
		'tableName',
		'statisticsName',
		'statisticsKinds'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCreateStatisticsCommand: self
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> compositeTokenVariables [
	^ #(#_s #statisticsKinds)
]

{ #category : #'generated-initialize-release' }
PsqlCreateStatisticsCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	statisticsKinds := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> nodeVariables [
	^ #(#tableName #statisticsName)
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> statisticsKinds [
	^ statisticsKinds
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> statisticsKinds: anOrderedCollection [
	statisticsKinds := anOrderedCollection
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> statisticsName [
	^ statisticsName
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> statisticsName: aPsqlQualifiedNameNode [
	self statisticsName notNil ifTrue: [ self statisticsName parent: nil ].
	statisticsName := aPsqlQualifiedNameNode.
	self statisticsName notNil ifTrue: [ self statisticsName parent: self ]
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> tableName [
	^ tableName
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> tableName: aPsqlQualifiedNameNode [
	self tableName notNil ifTrue: [ self tableName parent: nil ].
	tableName := aPsqlQualifiedNameNode.
	self tableName notNil ifTrue: [ self tableName parent: self ]
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> values [
	^ values
]

{ #category : #generated }
PsqlCreateStatisticsCommandNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
