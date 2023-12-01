Class {
	#name : #P3ClientTable,
	#superclass : #P3ClientNamedEntity,
	#category : #GToolkit4P3
}

{ #category : #accessing }
P3ClientTable >> gtActionQueryFor: anAction [
	<gtAction>
	| statement |
	statement := 'SELECT * FROM {1} LIMIT 10240' format: { self name }.
	^ anAction button
		icon: BrGlamorousVectorIcons playinspect;
		tooltip: statement;
		action: [ :button |
			button phlow spawnObject: (self client query: statement) ]
]

{ #category : #accessing }
P3ClientTable >> gtStructureFor: aView [
	<gtView>
	^ (self structure gtTableFor: aView) title: 'Structure'
]

{ #category : #accessing }
P3ClientTable >> structure [
	| statement |
	statement := self client format: 'SELECT column_name, data_type, is_nullable, character_maximum_length
 FROM information_schema.columns WHERE table_name = $1'.
 	^ statement query: { self name }
]
