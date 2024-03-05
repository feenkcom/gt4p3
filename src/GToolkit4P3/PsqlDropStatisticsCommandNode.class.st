Class {
	#name : #PsqlDropStatisticsCommandNode,
	#superclass : #PsqlCommandNode,
	#instVars : [
		'_s',
		'names'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlDropStatisticsCommandNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDropStatisticsCommand: self
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlDropStatisticsCommandNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> names [
	^ names
]

{ #category : #generated }
PsqlDropStatisticsCommandNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
