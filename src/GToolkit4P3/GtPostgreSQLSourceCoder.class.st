Class {
	#name : #GtPostgreSQLSourceCoder,
	#superclass : #GtSourceCoder,
	#category : #'GToolkit4P3-Snippet'
}

{ #category : #ui }
GtPostgreSQLSourceCoder >> asCoderViewModel [
	^ GtSourceCoderViewModel new coder: self
]

{ #category : #'api - ast' }
GtPostgreSQLSourceCoder >> computeAst: theSourceString [
	^ PsqlParser parseWithErrors: theSourceString startingAt: PsqlParser startingStateForCommand
]

{ #category : #initalization }
GtPostgreSQLSourceCoder >> initializeAddOns: addOns [
	super initializeAddOns: addOns.
	
	addOns addStyler: (GtCoderAstSmaCCParserStyler new smaccStyler: PsqlParser gtStyler).
	
	addOns
		addMainAction: 'Evaluate' translated
		icon: BrGlamorousVectorIcons play
		action: [ :aCoderUIModel :anElement | 
			GtCoderCodeExecutor doIt
				coderViewModel: aCoderUIModel;
				element: anElement;
				execute ]
		id: GtSourceCoderDoItActionId.
	addOns
		addMainAction: 'Inspect' translated
		icon: BrGlamorousVectorIcons playinspect
		action: [ :aCoderUIModel :anElement | 
			GtCoderCodeExecutor doItAndGo
				coderViewModel: aCoderUIModel;
				element: anElement;
				execute ]
		id: GtSourceCoderDoItAndGoActionId.
]

{ #category : #'private - actions' }
GtPostgreSQLSourceCoder >> primitiveEvaluate: aSourceString inContext: aGtSourceCoderEvaluationContext onFailDo: anEvaluationFailBlock [
	| p3Client |
	p3Client := GtP3ConnectionManager uniqueInstance defaultConnection.
	[ p3Client ensureConnected ] 
		on: Error 
		do: [ :exception |
					(P3Error new 
						info: { 
							$C->'P3090'. 
							$M->('Cannot connect to server ({1})' format: { exception }) } asDictionary; 
						yourself) signal ].
	^ p3Client query: aSourceString
]
