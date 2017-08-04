*SqueakCheck-Integration
selectorsOfTestsFor: aSelectorCollection

	^ aSelectorCollection inject: OrderedCollection new into: [:previous :each |
		previous union: (self selectorsOfTestsForMethodSelector: each)].