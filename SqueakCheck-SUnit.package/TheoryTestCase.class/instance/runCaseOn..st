running
runCaseOn: data

	data do: [:currentExample|
		[super runCase]
			on: TestFailure do: [:e |
				(self expectedFailures includes: testSelector)
					ifFalse: [self generateTestCase: testSelector withCounterexample: currentExample].
				e signal]].	