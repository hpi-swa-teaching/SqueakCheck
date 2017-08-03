*SqueakCheck-Integration
selectorsOfTestsForMethodSelector: aSelector

	^ self testClassForSelectedClass
		ifNil: [Array new]
		ifNotNil: [self testSelectorsInRightCategory select: [:each|
			(self testClassForSelectedClass >> each) messages includes: aSelector]].