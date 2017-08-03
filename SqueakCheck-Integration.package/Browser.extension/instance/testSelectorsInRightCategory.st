*SqueakCheck-Integration
testSelectorsInRightCategory

	^ self testClassForSelectedClass methodDict keys select: [:each|
		(self testClassForSelectedClass organization categoryOfElement: each) = self squeakCheckTestsMessageCategory].