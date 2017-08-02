*SqueakCheck-Integration
testsForSelectedMethodCategory

	^ self methodsInSelectedCategory inject: OrderedCollection new into: [:previos :each|
		previos union: (self compiledTestsForMethodSelector: each)]