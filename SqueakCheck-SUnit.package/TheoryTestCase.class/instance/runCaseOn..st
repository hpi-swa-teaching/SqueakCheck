running
runCaseOn: data

	data do: [:each |
		self currentExample: each.
		[super runCase] on: TestFailure do: [:exception |
			(self expectedFailures includes: self selector)
				ifFalse: [self generateIfNecessaryTestCase: self selector withCounterexample: self currentExample].
			exception signal]].