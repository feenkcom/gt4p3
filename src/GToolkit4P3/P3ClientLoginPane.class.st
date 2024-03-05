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
		'options'
	],
	#category : #'GToolkit4P3-UI'
}

{ #category : #accessing }
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

{ #category : #accessing }
P3ClientLoginPane >> databaseDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 5;
		label: 'Database';
		accessor: #database
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

{ #category : #accessing }
P3ClientLoginPane >> hostDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 1;
		label: 'Host';
		accessor: #host
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

{ #category : #utils }
P3ClientLoginPane >> loadFrom: p3Client [
	#(host port user password database) do: [ :each |
		self perform: each asMutator with: (p3Client perform: each) ].
	self ssl: p3Client isSSL.
	self options: p3Client startupOptions
]

{ #category : #accessing }
P3ClientLoginPane >> magritteAcceptAction [
	<magritteActionDescription>
	^ super magritteAcceptAction
		onSuccessCallback: (GtMagritteCallback new
				action: [ :aModel :aButton :aMemento :aDescription | ])
]

{ #category : #accessing }
P3ClientLoginPane >> options [
	^ options
]

{ #category : #accessing }
P3ClientLoginPane >> options: aString [
	options := aString
]

{ #category : #accessing }
P3ClientLoginPane >> optionsDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 7;
		label: 'Options';
		accessor: (MAPluggableAccessor
				read: [ :aModel | aModel options ifNil: [ '' ] ]
				write: [ :aModel :aValue | aModel options: (aValue isEmpty ifTrue: [ nil ] ifFalse: [ aValue ]) ])
]

{ #category : #accessing }
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

{ #category : #accessing }
P3ClientLoginPane >> passwordDescription [
	<magritteDescription>
	^ MAPasswordDescription new
		priority: 4;
		label: 'Password';
		accessor: #password
]

{ #category : #accessing }
P3ClientLoginPane >> port [
	^ port
]

{ #category : #accessing }
P3ClientLoginPane >> port: anInteger [
	port := anInteger
]

{ #category : #accessing }
P3ClientLoginPane >> portDescription [
	<magritteDescription>
	^ MANumberDescription new
		priority: 2;
		label: 'Port';
		accessor: #port;
		beInteger;
		bePositive
]

{ #category : #utils }
P3ClientLoginPane >> saveTo: p3Client [
	#(host port user password database) do: [ :each |
		p3Client perform: each asMutator with: (self perform: each) ].
	self ssl ifTrue: [ p3Client setSSL ] ifFalse: [ p3Client clearSSL ].
	p3Client startupOptions: self options
]

{ #category : #accessing }
P3ClientLoginPane >> ssl [
	^ ssl
]

{ #category : #accessing }
P3ClientLoginPane >> ssl: aBoolean [
	ssl := aBoolean
]

{ #category : #accessing }
P3ClientLoginPane >> sslDescription [
	<magritteDescription>
	^ MABooleanDescription new
		priority: 6;
		label: 'SSL';
		accessor: #ssl
]

{ #category : #accessing }
P3ClientLoginPane >> url [
	^ self p3Client url
]

{ #category : #accessing }
P3ClientLoginPane >> url: aUrlOrString [
	| p3Client |
	p3Client := P3Client url: aUrlOrString.
	self loadFrom: p3Client
]

{ #category : #accessing }
P3ClientLoginPane >> urlDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 10;
		label: 'URL';
		accessor: (MAPluggableAccessor
				read: [ :aModel | aModel url asString ]
				write: [ :aModel :aValue | aModel url: aValue ])
]

{ #category : #accessing }
P3ClientLoginPane >> user [
	^ user
]

{ #category : #accessing }
P3ClientLoginPane >> user: aString [
	user := aString
]

{ #category : #accessing }
P3ClientLoginPane >> userDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 3;
		label: 'User';
		accessor: #user
]
