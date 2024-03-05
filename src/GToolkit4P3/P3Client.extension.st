Extension { #name : #P3Client }

{ #category : #'*GToolkit4P3' }
P3Client >> databases [
	^ self listDatabases collect: [ :each | 
		P3ClientDatabase new client: self; name: each ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtCloseActionFor: anAction [
	<gtAction>
	^ anAction button
		icon: BrGlamorousVectorIcons shutdown;
		tooltip: 'Close PostgreSQL client connection';
		priority: 10;
		action: [ self close ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtDatabasesFor: aView [
	<gtView>
	^ aView list
		title: 'Databases';
		priority: 80;
		items: [ self databases ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtExampleCreateNumbersTable [
	<gtExample>
	<noTest>
	"'Play and Inspect' on a connected instance"
	^ self execute: '
		CREATE TABLE numbers (
			n INTEGER PRIMARY KEY,
			dec TEXT,
			oct TEXT,
			hex TEXT,
			bin TEXT,
			roman TEXT,
			words TEXT,
			prime BOOLEAN,
			char TEXT
		)'
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtExampleDropNumbersTable [
	<gtExample>
	<noTest>
	"'Play and Inspect' on a connected instance"
	^ self execute: 'DROP TABLE numbers'
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtExamplePopulateNumbersTable [
	<gtExample>
	<noTest>
	"'Play and Inspect' on a connected instance"
	| statement data result |
	statement := self prepare: 'INSERT 
		INTO numbers (n, dec, oct, hex, bin, roman, words, prime, char)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)'.
	data := (0 to: 127) collect: [ :n | { 
		n. 
		n printStringBase: 10.
		n printStringBase: 8.
		n printStringBase: 16.
		n printStringBase: 2.
		n printStringRoman.
		n asWords.
		n isPrime.
		n asCharacter printString } ].
	result := statement executeBatch: data.
	statement close.
	^ result
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtExampleQueryNumbersTable [
	<gtExample>
	<noTest>
	"'Play and Inspect' on a connected instance"
	^ self query: 'SELECT * FROM numbers'
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtSQLFor: aView [
	<gtView>
	^ aView textEditor
		title: 'SQL';
		priority: 20;
		aptitude: [ BrGlamorousCodeEditorAptitude new ];
		text: [ '' asRopedText ];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton |
				| query result |
				query := aButton phlow textViewContent asString.
				result := self query: query.
				aButton phlow spawnObject: result ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtSchemasFor: aView [
	<gtView>
	^ aView list
		title: 'Schemas';
		priority: 60;
		items: [ self schemas ]
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtViewDetailsIn: composite [
	<gtView>
	^ composite columnedList
		title: 'Details';
		priority: 25;
		items: [ {
			{ #client . self class . self }.
			{ #URL . self url }.
			{ #host . self host }.
			{ #port . self port }.
			{ #user . self user }.
			{ #password . self password }.
			{ #database . self database }.
			{ #ssl . self isSSL }.
			{ #options . self startupOptions ifNil: [ '' ] . self startupOptions }.
			{ #connected . self isConnected }.
			{ #session . self session ifNil: [ '' ]. self session }
		} ];
		column: 'Key' text: #first;
		column: 'Value' text: #second weight: 3;
		send: #last;
		updateWhen: P3ConnectionClosedEvent in: [ P3LogEvent announcer ];
		updateWhen: P3ConnectionEstablishedEvent in: [ P3LogEvent announcer ];
		actionUpdateButton
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtViewPropertiesFor: aView [
	<gtView>
	
	^ aView forward
		object: [ properties ];
		title: 'Properties';
		priority: 70;
		view: #gtItemsFor:;
		actionUpdateButton
]

{ #category : #'*GToolkit4P3' }
P3Client >> gtViewSettingsFor: aView [
	<gtView>
	
	^ aView forward
		object: [ settings ];
		title: 'Settings';
		priority: 65;
		view: #gtItemsFor:
]

{ #category : #'*GToolkit4P3' }
P3Client >> schemas [
	^ self listSchemas collect: [ :each | 
		P3ClientSchema new client: self; name: each ]
]
