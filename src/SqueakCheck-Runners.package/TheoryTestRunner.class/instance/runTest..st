running
runTest: aTestCase
	[aTestCase runCase]
			on: TestFailure
			do: [^ self
					printFailure: aTestCase selector
					withCounterexample: aTestCase currentExample].
	self printSuccessfulTest.