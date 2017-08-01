*SqueakCheck-Integration
runTest: aSelector
	|suite|
	
	suite := (self environment classNamed: self testClassNameForSelectedClass) selector: aSelector.
	self testRunSuite: suite.
	self changed: #messageList.