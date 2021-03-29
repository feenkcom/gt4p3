Class {
	#name : #BaselineOfGToolkit4P3,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4P3
}

{ #category : #baseline }
BaselineOfGToolkit4P3 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'P3' with: [ spec repository: 'github://feenkcom/P3' ].
			spec package: 'GToolkit4P3' with: [ spec requires: #(P3) ] ]
]
