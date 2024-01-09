Extension { #name : #P3Result }

{ #category : #'*GToolkit4P3' }
P3Result >> gtColumnsFor: aView [
	<gtView>
	self columns ifNil: [ ^ aView empty ].
	^ aView columnedList
		title: 'Columns';
		items: [ self columns ];
		priority: 40;
		column: 'position' text: #attributeNumber;
		column: 'field name' text: #fieldName;
		column: 'type name' text: #typeName;
		column: 'type oid' text: #typeOid;
		column: 'type size' text: #typeSize
]

{ #category : #'*GToolkit4P3' }
P3Result >> gtSourceFor: aView [
	<gtView>
	self hasSource ifFalse: [ ^ aView empty ].
	^ aView textEditor
		title: 'Source';
		priority: 45;
		aptitude: BrGlamorousCodeEditorAptitude;
		text: [ self source ]
]

{ #category : #'*GToolkit4P3' }
P3Result >> gtTableFor: aView [
	<gtView>
	| columnedList |
	self data ifNil: [ ^ aView empty ].
	self columns ifNil: [ ^ aView empty ].
	columnedList := aView columnedList
		title: 'Table';
		items: [ self data ];
		priority: 35.
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

{ #category : #'*GToolkit4P3' }
P3Result >> gtViewRacesIn: composite [
	<gtView>
	self tableName = 'races' ifFalse: [ ^ composite empty ].
	^ composite columnedList
		title: 'Races';
		priority: 50;
		items: [ self recordsAsDictionaries ];
		column: 'Round' text: [ :each | each at: #round ];
		column: 'Name' text: [ :each | each at: #name ];
		column: 'Date' text: [ :each | each at: #date ]
]

{ #category : #'*GToolkit4P3' }
P3Result >> tableName [
	"Simple heuristic approach to extract the table name from our SQL source.
	Return nil if not found."
	
	| parser table |
	self hasSource ifFalse: [ ^ nil ].
	parser := 'from' asPParser
		, #blank asPParser plus
		, #blank asPParser negate plus 
		flatten ==> #third.
	table := (parser sea ==> #second) star 
		==> [ :t | t size = 1 ifTrue: [ t anyOne ] ifFalse: [ nil ] ].
	^ table parse: self source asLowercase
]
