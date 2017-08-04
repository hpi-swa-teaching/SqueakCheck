running
runCaseOn: data

	data do: [:each |
		currentExample := each.
		[super runCase] on: TestFailure do: [:exception |
			(self expectedFailures includes: testSelector)
				ifFalse: [self generateIfNecessaryTestCase: testSelector withCounterexample: currentExample].
			exception signal]].