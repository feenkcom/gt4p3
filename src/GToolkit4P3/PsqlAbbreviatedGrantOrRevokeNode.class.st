Class {
	#name : #PsqlAbbreviatedGrantOrRevokeNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'roleNames'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAbbreviatedGrantOrRevoke: self
]

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> compositeTokenVariables [
	^ #(#_s #roleNames)
]

{ #category : #'generated-initialize-release' }
PsqlAbbreviatedGrantOrRevokeNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	roleNames := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> roleNames [
	^ roleNames
]

{ #category : #generated }
PsqlAbbreviatedGrantOrRevokeNode >> roleNames: anOrderedCollection [
	roleNames := anOrderedCollection
]
