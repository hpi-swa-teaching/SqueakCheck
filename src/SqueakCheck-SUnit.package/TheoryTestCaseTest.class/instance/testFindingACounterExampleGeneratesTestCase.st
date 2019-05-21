tests
testFindingACounterExampleGeneratesTestCase
	| expectedTestCaseName test |
	"Magic name comes from the result of TrivialDataGenerator >> objectData returning itself."
	
	expectedTestCaseName := #testAFailingTheoryFailsWithATrivialDataGenerator.
	test := TheoryTestData selector: #testAFailingTheoryFails:.
	test generator: TrivialDataGenerator new.
	[test runCase] on: TestFailure do: ["Eat the expected failure"].
	self assert: (TheoryTestData canUnderstand: expectedTestCaseName).
	TheoryTestData removeSelector: expectedTestCaseName.