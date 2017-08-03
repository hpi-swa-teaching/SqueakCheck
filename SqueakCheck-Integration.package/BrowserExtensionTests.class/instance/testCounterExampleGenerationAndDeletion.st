testing
testCounterExampleGenerationAndDeletion
	| test |
	
	self browser addTestForSelectedMethod.
	self browser testClassForSelectedClass
		compile: ((self browser newMethodContent: 'testReturnTrueProducesCounterexamples:') copyReplaceTokens: 'notNil' with: 'isNil')
		classified: browser squeakCheckTestsMessageCategory.
	test := self browser testClassForSelectedClass selector: #testReturnTrueProducesCounterexamples:.
	self halt.
	[[test runCase]
		on: TestFailure do: [].
	self assert: (self browser testClassForSelectedClass canUnderstand: #testReturnTrueProducesCounterexamplesWith0)].