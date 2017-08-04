*SqueakCheck-Integration
runTest: aSelector

	self
		testRunSuite: ((self environment classNamed: self testClassNameForSelectedClass) selector: aSelector);
		changed: #messageList.