SWT014-SqueakCheck
runTest: aCompiledMethod
	|suite|
	
	suite := (self environment classNamed: self classNameForTest) selector: (aCompiledMethod selector).
	self testRunSuite: suite.
	self changed: #messageList.