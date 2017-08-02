running
runCaseOn: data

	data do: [:each|
		currentExample := each.
		[super runCase]
			on: TestFailure do: [:e |
				(self expectedFailures includes: testSelector)
					ifFalse: [self generateIfNecessaryTestCase: testSelector withCounterexample: currentExample].
				e signal]].