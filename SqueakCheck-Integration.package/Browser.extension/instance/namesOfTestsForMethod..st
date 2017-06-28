*SqueakCheck-Integration
namesOfTestsForMethod: aMessageName

	^ (self environment hasClassNamed: self classNameForTest)
		ifFalse: [Dictionary new]
		ifTrue: [	self testsInRightCategory  select: [:each| (self classWithTestsForSelectedClass methodDict at: each) messages includes: aMessageName]].