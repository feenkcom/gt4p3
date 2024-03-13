Class {
	#name : #BaselineOfGToolkit4P3,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4P3
}

{ #category : #accessing }
BaselineOfGToolkit4P3 class >> loadLepiter [
	IceRepository registry
		detect: [ :aRepository | aRepository name = 'gt4p3' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties
				addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [ self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGToolkit4P3 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'P3ForGToolkit' with: [ spec repository: 'github://feenkcom/P3' ].
			spec package: 'GToolkit4P3' with: [ spec requires: #(P3ForGToolkit) ] ]
]
