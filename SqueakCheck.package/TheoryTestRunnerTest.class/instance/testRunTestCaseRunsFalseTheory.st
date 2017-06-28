testing
testRunTestCaseRunsFalseTheory
	runner runTest: (TheoryTestData selector: #aFailingTheoryFails:).
	self assert: (output contents includesSubString: 'Falsifiable'). "At least one test failed."