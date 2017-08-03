*SqueakCheck-Integration
selectorsOfTestsForSelectedMethodCategory

	^ self methodsInSelectedCategory inject: OrderedCollection new into: [:previous :each|
		previous union: (self selectorsOfTestsForMethodSelector: each)]