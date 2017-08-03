*SqueakCheck-Integration
testSelectorsInRightCategory

	^ self classWithTestsForSelectedClass methodDict keys select: [:each|
		(self classWithTestsForSelectedClass organization categoryOfElement: each) = self squeakCheckTestsMessageCategory].