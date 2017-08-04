testing
testMethodGeneration

	self assert: self browser selectorsOfTestsForSelectedMethod isEmpty.
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod size == 1).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod size == 2).