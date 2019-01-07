Class {
	#name : #P3ClientTable,
	#superclass : #P3ClientNamedEntity,
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTable >> gtStructureFor: aView [
	<gtView>
	^ (self structure gtTableFor: aView) title: 'Structure'
]

{ #category : #accessing }
P3ClientTable >> structure [
	^ self client query: 'select column_name, data_type, character_maximum_length
 from INFORMATION_SCHEMA.COLUMNS where table_name = ''', self name, ''''
]
