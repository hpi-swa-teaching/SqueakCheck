*SqueakCheck-Integration
selectorsOfTestsForSelectedMethodCategory

	^ self methodSelectorsInSelectedMessageCategory inject: OrderedCollection new into: [:previous :each|
		previous union: (self selectorsOfTestsForMethodSelector: each)]