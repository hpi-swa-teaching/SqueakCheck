*SqueakCheck-Integration
testSelectorsInRightCategory

	^ self testClassForSelectedClass selectors select: [:each |
		(self testClassForSelectedClass organization categoryOfElement: each) = self squeakCheckTestsMessageCategory].