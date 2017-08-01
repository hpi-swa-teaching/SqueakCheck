testing
testMethodGeneration
	|browser|
	
	browser := Browser new.
	browser selectClass: self class.
	browser selectMessageNamed: #testTrue.
	
	self assert: browser namesOfTestsForSelectedMethod isEmpty.
	browser newTest.
	self assert: (browser namesOfTestsForSelectedMethod size == 1).
	browser newTest.
	self assert: (browser namesOfTestsForSelectedMethod size == 2).
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	