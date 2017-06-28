testing
testRunTestCaseRunsTrueTheory
	runner runTest: (TheoryTestData selector: #aPassingTheoryPasses:).
	self assert: (output contents includesSubString: '.'). "At least one test passed."