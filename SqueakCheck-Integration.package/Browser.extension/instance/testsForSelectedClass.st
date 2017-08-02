*SqueakCheck-Integration
testsForSelectedClass

	^ self selectedClassMethods inject: OrderedCollection new into: [:previous :each|
		previous union: (self namesOfTestsForMethod: each)]