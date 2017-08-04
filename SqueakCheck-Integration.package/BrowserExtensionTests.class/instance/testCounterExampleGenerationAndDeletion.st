testing
testCounterExampleGenerationAndDeletion
	| test testSelector counterexampleSelector |
	
	testSelector := #testReturnTrueProducesCounterexamples:.
	counterexampleSelector := #testReturnTrueProducesCounterexamplesWith0.
	
	self browser addTestForSelectedMethod.
	self browser testClassForSelectedClass
		compile: ((self browser newMethodContent: testSelector asString) copyReplaceTokens: 'notNil' with: 'isNil')
		classified: browser squeakCheckTestsMessageCategory.
	test := self browser testClassForSelectedClass selector: testSelector.
	self assert: (browser counterexamples: testSelector) isEmpty.
	[test runCase] on: TestFailure do: [].
	self assert: (self browser testClassForSelectedClass canUnderstand: counterexampleSelector).
	self assert: (browser counterexamples: testSelector) size = 1.
	self browser deleteCounterexamples: testSelector.
	self assert: (browser counterexamples: testSelector) isEmpty.
	