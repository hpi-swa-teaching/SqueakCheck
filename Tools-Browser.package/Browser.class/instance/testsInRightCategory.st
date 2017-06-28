SWT014-SqueakCheck
testsInRightCategory

	^ self classWithTestsForSelectedClass methodDict keys select: [:each|
		(self classWithTestsForSelectedClass organization categoryOfElement: each) = #squeakCheckTests].