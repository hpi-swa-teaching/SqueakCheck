*SqueakCheck-Integration
namesOfTestsForMethod: aMessageName

	^ self classWithTestsForSelectedClass
		ifNil: [Dictionary new]
		ifNotNil: [self testsInRightCategory select: [:each|
			(self classWithTestsForSelectedClass >> each) messages includes: aMessageName]].