testing
testMethodNaming
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	
		
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue:).
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue1:).
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue2:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue1:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue2:).