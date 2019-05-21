tests
testRunTestCaseRunsTrueTheory
	runner runTest: (TheoryTestData selector: #aPassingTheoryPasses:).
	self assert: (output contents includesSubstring: '.'). "At least one test passed."