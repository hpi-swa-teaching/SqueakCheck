SWT014-SqueakCheck
namesOfTestsForSelectedMethod

	^ (self environment hasClassNamed: self classNameForTest)
		ifFalse: [Dictionary new]
		ifTrue: [	self testsInRightCategory  select: [:each| (self classWithTestsForSelectedClass methodDict at: each) messages includes: (self selectedMessageName)]].