tests
testRunTestCaseRunsFalseTheory
	runner runTest: (TheoryTestData selector: #testAFailingTheoryFails:).
	self assert: (output contents includesSubString: 'Falsifiable'). "At least one test failed."