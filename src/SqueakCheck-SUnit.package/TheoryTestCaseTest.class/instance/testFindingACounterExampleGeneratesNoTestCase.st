testing
testFindingACounterExampleGeneratesNoTestCase
	| expectedTestCaseName test |
	"Magic name comes from the result of TrivialDataGenerator >> objectData returning itself."
	
	expectedTestCaseName := #testAFailingTheoryFailsNoCounterexampleWithATrivialDataGenerator.
	test := TheoryTestData selector: #testAFailingTheoryFailsNoCounterexample:.
	test generator: TrivialDataGenerator new.
	[test runCase] on: TestFailure do: ["Eat the expected failure"].
	self deny: (TheoryTestData canUnderstand: expectedTestCaseName).