testing
testAFailingTheoryPrintsOneResult
	runner runTest: (TheoryTestData selector: #testAFailingTheoryFails:).
	self assert: 1 equals: output contents lineCount.