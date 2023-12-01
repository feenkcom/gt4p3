Extension { #name : #P3Converter }

{ #category : #'*GToolkit4P3' }
P3Converter >> gtViewMapFor: composite [
	<gtView>
	^ composite columnedList
		title: 'Map';
		items: [ map associations ];
		column: 'type' text: [ :association | association value first ];
		column: 'oid' text: [ :association | association key ];
		column: 'handler' text: [ :association | association value second ];
		send: [ :association | self class >> association value second ]
]
