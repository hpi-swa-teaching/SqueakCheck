*SqueakCheck-Integration
selectorsOfTestsForSelectedClass

	^ self selectedClassMethods inject: OrderedCollection new into: [:previous :each|
		previous union: (self selectorsOfTestsForMethodSelector: each)]