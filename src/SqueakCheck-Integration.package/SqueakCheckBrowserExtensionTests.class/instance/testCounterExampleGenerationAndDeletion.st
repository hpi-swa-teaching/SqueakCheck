tests
testCounterExampleGenerationAndDeletion
	| firstMethod firstTestSelector firstCounterexampleSelector secondMethod secondTestSelector secondCounterexampleSelector |
	
	firstMethod := #returnNil.
	firstTestSelector := #testReturnNil:.
	firstCounterexampleSelector := #testReturnNilWith0.
	
	secondMethod := #returnNilAsWell.
	secondTestSelector := #testReturnNilAsWell:.
	secondCounterexampleSelector := #testReturnNilAsWellWith0.
	
	self browser selectMessageNamed: firstMethod.
	self browser addTestForSelectedMethod.
	self assert: (self browser counterexamplesFor: firstTestSelector) isEmpty.
	[self browser runTest: firstTestSelector] on: TestFailure do: [].
	self assert: (self browser testClassForSelectedClass canUnderstand: firstCounterexampleSelector).
	self assert: (self browser counterexamplesFor: firstTestSelector) size = 1.
	
	self browser selectMessageNamed: secondMethod.
	self browser addTestForSelectedMethod.
	self assert: (self browser counterexamplesFor: secondTestSelector) isEmpty.
	[self browser runTest: secondTestSelector] on: TestFailure do: [].
	self assert: (self browser testClassForSelectedClass canUnderstand: secondCounterexampleSelector).
	self assert: (self browser counterexamplesFor: secondTestSelector) size = 1.
	
	self browser selectMessageNamed: firstMethod.	
	self browser deleteCounterexamples: firstTestSelector.
	self assert: (self browser counterexamplesFor: firstTestSelector) isEmpty.
	self deny: (self browser testClassForSelectedClass canUnderstand: firstCounterexampleSelector).
	
	self browser selectMessageNamed: secondMethod.
	self assert: (self browser testClassForSelectedClass canUnderstand: secondCounterexampleSelector).
	self assert: (self browser counterexamplesFor: secondTestSelector) size = 1.
	
	self browser deleteCounterexamples: secondTestSelector.
	self assert: (self browser counterexamplesFor: secondTestSelector) isEmpty.
	self deny: (self browser testClassForSelectedClass canUnderstand: secondCounterexampleSelector).
	