testing
testMethodGeneration
	|browser|
	
	browser := Browser new.
	browser selectClass: self class.
	browser selectMessageNamed: #testTrue.
	
	self assert: browser selectorsOfTestsForSelectedMethod isEmpty.
	browser addTestForSelectedMethod.
	self assert: (browser selectorsOfTestsForSelectedMethod size == 1).
	browser addTestForSelectedMethod.
	self assert: (browser selectorsOfTestsForSelectedMethod size == 2).
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	