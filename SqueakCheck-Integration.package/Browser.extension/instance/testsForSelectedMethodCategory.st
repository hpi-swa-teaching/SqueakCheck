*SqueakCheck-Integration
testsForSelectedMethodCategory

	^ self methodsInSelectedCategory inject: OrderedCollection new into: [:previous :each|
		previous union: (self namesOfTestsForMethod: each)]