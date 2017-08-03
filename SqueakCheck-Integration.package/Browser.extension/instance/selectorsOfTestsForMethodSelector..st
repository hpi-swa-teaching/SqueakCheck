*SqueakCheck-Integration
selectorsOfTestsForMethodSelector: aSelector

	^ self classWithTestsForSelectedClass
		ifNil: [Array new]
		ifNotNil: [self testSelectorsInRightCategory select: [:each|
			(self classWithTestsForSelectedClass >> each) messages includes: aSelector]].