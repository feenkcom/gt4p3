Class {
	#name : #PsqlAlterMaterializedViewActionNode,
	#superclass : #PsqlProgramNode,
	#instVars : [
		'_s',
		'columnName',
		'integer',
		'attributeOptionNames',
		'values',
		'compressionMethod',
		'indexName',
		'newAccessMethod',
		'newTablespaceName',
		'storageParameters',
		'newOwner'
	],
	#category : #'GToolkit4P3-Parser'
}

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> _s [
	^ _s
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> _s: anOrderedCollection [
	_s := anOrderedCollection
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterMaterializedViewAction: self
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> attributeOptionNames [
	^ attributeOptionNames
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> attributeOptionNames: anOrderedCollection [
	attributeOptionNames := anOrderedCollection
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> columnName [
	^ columnName
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> columnName: aPsqlQualifiedNameNode [
	self columnName notNil ifTrue: [ self columnName parent: nil ].
	columnName := aPsqlQualifiedNameNode.
	self columnName notNil ifTrue: [ self columnName parent: self ]
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> compositeTokenVariables [
	^ #(#_s #attributeOptionNames #storageParameters)
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> compressionMethod [
	^ compressionMethod
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> compressionMethod: aSmaCCToken [
	compressionMethod := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> indexName [
	^ indexName
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> indexName: aSmaCCToken [
	indexName := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PsqlAlterMaterializedViewActionNode >> initialize [
	super initialize.
	_s := OrderedCollection new: 2.
	attributeOptionNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	storageParameters := OrderedCollection new: 2.
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> integer [
	^ integer
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> integer: aPsqlNumberNode [
	self integer notNil ifTrue: [ self integer parent: nil ].
	integer := aPsqlNumberNode.
	self integer notNil ifTrue: [ self integer parent: self ]
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newAccessMethod [
	^ newAccessMethod
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newAccessMethod: aSmaCCToken [
	newAccessMethod := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newOwner [
	^ newOwner
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newOwner: aSmaCCToken [
	newOwner := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newTablespaceName [
	^ newTablespaceName
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> newTablespaceName: aSmaCCToken [
	newTablespaceName := aSmaCCToken
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> nodeVariables [
	^ #(#columnName #integer)
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> storageParameters [
	^ storageParameters
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> storageParameters: anOrderedCollection [
	storageParameters := anOrderedCollection
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> tokenVariables [
	^ #(#compressionMethod #indexName #newAccessMethod #newTablespaceName #newOwner)
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> values [
	^ values
]

{ #category : #generated }
PsqlAlterMaterializedViewActionNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
