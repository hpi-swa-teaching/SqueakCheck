running
runCase
	"If counterExample is NotAssigned, then we're running the test for the first time. Otherwise, it contains the value of a counterexample to our theory. Run the test using this value."

	self runningATheory ifFalse: [^ super runCase].
	self currentExample = NotAssigned
		ifTrue: [	self runCaseOn: (self makeTestData: (self class >> self selector) with: TrivialDataGenerator new).
				self runCaseOn: (self makeTestData: (self class >> self selector) with: self generator)]
		ifFalse: [super runCase].