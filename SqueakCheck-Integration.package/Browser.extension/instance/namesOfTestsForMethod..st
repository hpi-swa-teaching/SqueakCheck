*SqueakCheck-Integration
namesOfTestsForMethod: aMessageName

	self classWithTestsForSelectedClass ifNil: [ ^ Dictionary new ].
	^ self testsInRightCategory  select: [:each| (self classWithTestsForSelectedClass methodDict at: each) messages includes: aMessageName].