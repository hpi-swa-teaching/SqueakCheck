running
runCaseOn: data

	1 to: data size do: [:i |
		currentExample := data at: i.
		[super runCase]
			on: TestFailure do: [:e |
				(self expectedFailures includes: testSelector)
					ifFalse: [self generateTestCase: testSelector withCounterexample: currentExample].
				e signal]].	