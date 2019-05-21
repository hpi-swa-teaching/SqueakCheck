tests
testRunTestCaseRunsFalseTheory
	runner runTest: (TheoryTestData selector: #testAFailingTheoryFails:).
	self assert: (output contents includesSubstring: 'Falsifiable'). "At least one test failed."