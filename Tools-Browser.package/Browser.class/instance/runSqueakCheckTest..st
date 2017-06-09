SWT014-Browsererweiterung
runSqueakCheckTest: aCompiledMethod
	|suite|
	suite := (self environment classNamed: (self classNameSqueakCheck)) selector: (aCompiledMethod selector).
	self testRunSuite: suite.
	self changed: #messageList.