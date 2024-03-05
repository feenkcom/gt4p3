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
	^ theSourceString
]

{ #category : #initalization }
GtPostgreSQLSourceCoder >> initializeAddOns: addOns [
	super initializeAddOns: addOns.
	
	"addOns addStyler: (GtCoderAstSmaCCParserStyler new smaccStyler: PythonParser gtStyler)."
	
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
	^ GtP3F1DemoExamples p3Client query: aSourceString
]
