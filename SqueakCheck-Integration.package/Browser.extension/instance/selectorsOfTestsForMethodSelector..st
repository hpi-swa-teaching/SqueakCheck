*SqueakCheck-Integration
selectorsOfTestsForMethodSelector: aSelector

	^ self testClassForSelectedClass
		ifNil: [OrderedCollection new]
		ifNotNil: [self testSelectorsInRightCategory select: [:each |
			(self testClassForSelectedClass >> each) hasLiteral: aSelector]].