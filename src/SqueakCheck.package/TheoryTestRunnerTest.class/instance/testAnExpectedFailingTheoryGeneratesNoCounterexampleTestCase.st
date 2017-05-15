testing
testAnExpectedFailingTheoryGeneratesNoCounterexampleTestCase
	runner runTest: (TheoryTestData selector: #anExpectedFailingTheoryFails:).
	self assert: (self class allSelectors select: [:name | name beginsWith: 'testAnExpectedFailingTheoryFailsWith']) isEmpty.