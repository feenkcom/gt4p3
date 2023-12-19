Class {
	#name : #P3ForeignKeyConstraint,
	#superclass : #P3Constraint,
	#instVars : [
		'foreignKeyTable',
		'foreignKeyColumns'
	],
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ForeignKeyConstraint class >> handlesType: type [
	^ type = 'FOREIGN KEY'
]

{ #category : #accessing }
P3ForeignKeyConstraint >> constraintType [
	^ 'FOREIGN KEY'
]

{ #category : #accessing }
P3ForeignKeyConstraint >> foreignKeyColumns [
	^ foreignKeyColumns
]

{ #category : #accessing }
P3ForeignKeyConstraint >> foreignKeyColumns: anObject [
	foreignKeyColumns := anObject
]

{ #category : #accessing }
P3ForeignKeyConstraint >> foreignKeyTable [
	^ foreignKeyTable
]

{ #category : #accessing }
P3ForeignKeyConstraint >> foreignKeyTable: anObject [
	foreignKeyTable := anObject
]

{ #category : #accessing }
P3ForeignKeyConstraint >> loadDetailsUsing: client [
	| statement result |
	super loadDetailsUsing: client.
	statement := client format: 'SELECT column_name FROM information_schema.constraint_column_usage WHERE constraint_schema = $1 AND constraint_name = $2'.
	result := statement query: { self constraintSchema . self constraintName }.
	self foreignKeyColumns: result firstColumnData.
	statement := client format: 'SELECT table_name FROM information_schema.constraint_table_usage WHERE constraint_schema = $1 AND constraint_name = $2'.
	result := statement query: { self constraintSchema . self constraintName }.
	self foreignKeyTable: result firstFieldOfFirstRecord
]

{ #category : #accessing }
P3ForeignKeyConstraint >> sqlDescription [
	^ 'FOREIGN KEY (' , ($, join: self constraintColumns) ,') REFERENCES ' , self foreignKeyTable , '(', ($, join: self foreignKeyColumns), ')'
]
