*SqueakCheck-Integration
testsForSelectedClass

	^ self selectedClassMethods inject: OrderedCollection new into: [:previos :each|
		previos union: (self namesOfTestsForMethod: each)]