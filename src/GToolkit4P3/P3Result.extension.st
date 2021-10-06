Extension { #name : #P3Result }

{ #category : #'*GToolkit4P3' }
P3Result >> gtTableFor: aView [
	<gtView>
	| columnedList |
	self data ifNil: [ ^ aView empty ].
	self columns ifNil: [ ^ aView empty ].
	columnedList := aView columnedList
		title: 'Table';
		items: [ self data ].
	self columns
		doWithIndex: [ :column :index | 
			columnedList
				column: column fieldName
				do: [ :aColumn | 
					aColumn
						item: [ :eachRow | eachRow at: index ];
						weight: 1 ] ].
	^ columnedList
]
