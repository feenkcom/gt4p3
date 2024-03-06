Class {
	#name : #PsqlVacuumOptionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'boolean',
		'integer',
		'_size'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlVacuumOptionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlVacuumOptionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlVacuumOptionNode >> _size [
	^ _size
]

{ #category : #generated }
PsqlVacuumOptionNode >> _size: aPsqlNumberNode [
	self _size notNil ifTrue: [ self _size parent: nil ].
	_size := aPsqlNumberNode.
	self _size notNil ifTrue: [ self _size parent: self ]
]

{ #category : #generated }
PsqlVacuumOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVacuumOption: self
]

{ #category : #generated }
PsqlVacuumOptionNode >> boolean [
	^ boolean
]

{ #category : #generated }
PsqlVacuumOptionNode >> boolean: aPsqlBooleanNode [
	self boolean notNil ifTrue: [ self boolean parent: nil ].
	boolean := aPsqlBooleanNode.
	self boolean notNil ifTrue: [ self boolean parent: self ]
]

{ #category : #generated }
PsqlVacuumOptionNode >> compositeTokenVariables [
	^ #(#_s)
]

{ #category : #'generated-initialize-release' }
PsqlVacuumOptionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlVacuumOptionNode >> integer [
	^ integer
]

{ #category : #generated }
PsqlVacuumOptionNode >> integer: aPsqlNumberNode [
	self integer notNil ifTrue: [ self integer parent: nil ].
	integer := aPsqlNumberNode.
	self integer notNil ifTrue: [ self integer parent: self ]
]

{ #category : #generated }
PsqlVacuumOptionNode >> nodeVariables [
	^ #(#boolean #integer #_size)
]
