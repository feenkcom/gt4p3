Class {
	#name : #P3ClientLoginPane,
	#superclass : #Object,
	#instVars : [
		'host',
		'port',
		'user',
		'password',
		'database',
		'ssl',
		'options',
		'inspectAction',
		'acceptAction'
	],
	#category : #'GToolkit4P3-UI'
}

{ #category : #accessing }
P3ClientLoginPane >> acceptAction [
	^ acceptAction ifNil: [ 
		[ :aModel :aButton :aMemento :aDescription |
			self saveToDefaultConnection.
			aButton phlow spawnObject: self defaultConnection ] ]
]

{ #category : #accessing }
P3ClientLoginPane >> acceptAction: anAction [
	acceptAction := anAction
]

{ #category : #converting }
P3ClientLoginPane >> asElement [
	^ self asGtMagritteViewModel asElement padding: (BlInsets all: 10)
]

{ #category : #accessing }
P3ClientLoginPane >> database [
	^ database
]

{ #category : #accessing }
P3ClientLoginPane >> database: anObject [
	database := anObject
]

{ #category : #magritte }
P3ClientLoginPane >> databaseDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 5;
		label: 'Database';
		accessor: #database;
		default: ''
]

{ #category : #accessing }
P3ClientLoginPane >> defaultConnection [
	^ GtP3ConnectionManager uniqueInstance defaultConnection
]

{ #category : #examples }
P3ClientLoginPane >> gtExampleF1 [
	<gtExample>
	^ self loadFrom: (GtP3F1DemoExamples p3Client); asElement
]

{ #category : #accessing }
P3ClientLoginPane >> host [
	^ host
]

{ #category : #accessing }
P3ClientLoginPane >> host: aString [
	host := aString
]

{ #category : #magritte }
P3ClientLoginPane >> hostDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 1;
		label: 'Host';
		accessor: #host;
		default: 'localhost'
]

{ #category : #accessing }
P3ClientLoginPane >> initialize [
	super initialize.
	host := 'localhost'.
	port := 5432.
	user := 'user'.
	password := 'password'.
	database := 'database'.
	ssl := false
]

{ #category : #accessing }
P3ClientLoginPane >> inspectAction [
	^ inspectAction ifNil: [ 
		[ :aModel :aButton :aMemento :aDescription |
			aButton phlow spawnObject: self defaultConnection ] ]
]

{ #category : #accessing }
P3ClientLoginPane >> inspectAction: anAction [
	inspectAction := anAction
]

{ #category : #testing }
P3ClientLoginPane >> isValidPsqlUrl: string [
	"postgresql://username:password@localhost:5432/databasename?sslmode=require"
	
	^ [ (P3Client url: string asUrl) url asString = string ]
		on: Error
		do: [ false ]
]

{ #category : #utils }
P3ClientLoginPane >> loadFrom: p3Client [
	#(host port user password database) do: [ :each |
		self perform: each asMutator with: (p3Client perform: each) ].
	self ssl: p3Client isSSL.
	self options: p3Client startupOptions
]

{ #category : #magritte }
P3ClientLoginPane >> magritteAcceptAction [
	<magritteActionDescription>
	^ super magritteAcceptAction
		beAlwaysEnabled;
		label: 'Accept the changes and initialize a new connection';
		onSuccessCallback: (GtMagritteCallback new action: self acceptAction)
]

{ #category : #magritte }
P3ClientLoginPane >> magritteCancelAction [
	<magritteActionDescription>
	^ nil
]

{ #category : #magritte }
P3ClientLoginPane >> magritteInspectAction [
	<magritteActionDescription>
	^ MAActionDescription new
		priority: 20;
		label: 'Inspect the current connection';
		isLabelVisible: false;
		blocIcon: BrGlamorousVectorIcons inspect;
		action: (GtMagritteCallback new action: self inspectAction);
		beToolbarAction
]

{ #category : #accessing }
P3ClientLoginPane >> options [
	^ options
]

{ #category : #accessing }
P3ClientLoginPane >> options: aString [
	options := aString
]

{ #category : #magritte }
P3ClientLoginPane >> optionsDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 7;
		label: 'Options';
		accessor: (MAPluggableAccessor
				read: [ :aModel | aModel options ifNil: [ '' ] ]
				write: [ :aModel :aValue | aModel options: (aValue isEmpty ifTrue: [ nil ] ifFalse: [ aValue ]) ]);
		default: ''
]

{ #category : #converting }
P3ClientLoginPane >> p3Client [
	| p3Client |
	p3Client := P3Client new.
	self saveTo: p3Client.
	^ p3Client
]

{ #category : #accessing }
P3ClientLoginPane >> password [
	^ password
]

{ #category : #accessing }
P3ClientLoginPane >> password: aString [
	password := aString
]

{ #category : #magritte }
P3ClientLoginPane >> passwordDescription [
	<magritteDescription>
	^ MAPasswordDescription new
		priority: 4;
		label: 'Password';
		accessor: #password;
		default: ''
]

{ #category : #accessing }
P3ClientLoginPane >> port [
	^ port
]

{ #category : #accessing }
P3ClientLoginPane >> port: anInteger [
	port := anInteger
]

{ #category : #magritte }
P3ClientLoginPane >> portDescription [
	<magritteDescription>
	^ MANumberDescription new
		priority: 2;
		label: 'Port';
		accessor: #port;
		beInteger;
		bePositive;
		default: 5432
]

{ #category : #utils }
P3ClientLoginPane >> saveTo: p3Client [
	#(host port user password database) do: [ :each |
		p3Client perform: each asMutator with: (self perform: each) ].
	self ssl ifTrue: [ p3Client setSSL ] ifFalse: [ p3Client clearSSL ].
	p3Client startupOptions: self options
]

{ #category : #utils }
P3ClientLoginPane >> saveToDefaultConnection [
	"Apply the login/connection settings that I hold to the default connection.
	If necessary close the existing default connection.
	Enforce opening the connection to make sure it works."
	
	| p3Client |
	p3Client := self defaultConnection.
	p3Client isConnected ifTrue: [ p3Client close ].
	self saveTo: p3Client.
	p3Client ensureConnected.
	self assert: p3Client isWorking
]

{ #category : #accessing }
P3ClientLoginPane >> ssl [
	^ ssl
]

{ #category : #accessing }
P3ClientLoginPane >> ssl: aBoolean [
	ssl := aBoolean
]

{ #category : #magritte }
P3ClientLoginPane >> sslDescription [
	<magritteDescription>
	^ MABooleanDescription new
		priority: 6;
		label: 'SSL';
		accessor: #ssl;
		default: true
]

{ #category : #accessing }
P3ClientLoginPane >> url [
	^ self p3Client url
]

{ #category : #accessing }
P3ClientLoginPane >> url: aUrlOrString [
	"postgresql://username:password@localhost:5432/databasename?sslmode=require"
	
	| p3Client |
	p3Client := P3Client url: aUrlOrString.
	self loadFrom: p3Client
]

{ #category : #magritte }
P3ClientLoginPane >> urlDescription [
	"<magritteDescription>"
	
	"postgresql://username:password@localhost:5432/databasename?sslmode=require"
	
	^ MAStringDescription new
		priority: 10;
		label: 'URL';
		accessor: (MAPluggableAccessor
				read: [ :aModel | aModel url asString ]
				write: [ :aModel :aValue | aModel url: aValue ]);
		addCondition: [ :string | self isValidPsqlUrl: string ]
			labelled: 'Incorrect PostgreSQL connection URL';
		default: ''
]

{ #category : #accessing }
P3ClientLoginPane >> user [
	^ user
]

{ #category : #accessing }
P3ClientLoginPane >> user: aString [
	user := aString
]

{ #category : #magritte }
P3ClientLoginPane >> userDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 3;
		label: 'User';
		accessor: #user;
		default: ''
]
