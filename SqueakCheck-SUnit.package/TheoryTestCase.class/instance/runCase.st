running
runCase
	"If counterExample is NotAssigned, then we're running the test for the first time. Otherwise, it contains the value of a counterexample to our theory. Run the test using this value."
	| data |
	self runningATheory ifFalse: [^ super runCase].
	
	(currentExample = NotAssigned)
		ifTrue: [	
			1 to: testRunSize do: [:i |
				data := self makeTestData: (self class >> testSelector).
				currentExample := data.
				"A TestFailure, or a timeout, will break out of the loop, storing the last used value."
				[super runCase]
					on: TestFailure do: [:e |
						(self expectedFailures includes: testSelector)
							ifFalse: [self generateTestCase: testSelector withCounterexample: currentExample].
						e signal]]]
		ifFalse: [super runCase]