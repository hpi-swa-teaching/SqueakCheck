testing
testFindingaCounterExampleGeneratesTestCase
	| expectedTestCaseName test |
	"Magic name comes from the result of TrivialDataGenerator >> objectData returning itself."
	expectedTestCaseName := #testAFailingTheoryFailsWithATrivialDataGenerator.
	test := TheoryTestData selector: #aFailingTheoryFails:.
	test generator: TrivialDataGenerator new.
	[[test runCase]
		on: TestFailure do: ["Eat the expected failure"].
	self assert: (TheoryTestData canUnderstand: expectedTestCaseName)]
		ensure: [TheoryTestData removeSelector: expectedTestCaseName].