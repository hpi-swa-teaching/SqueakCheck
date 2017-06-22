testing
testAFailingTheoryPrintsOneResult
	runner runTest: (TheoryTestData selector: #aFailingTheoryFails:).
	self assert: 1 equals: output contents lineCount.