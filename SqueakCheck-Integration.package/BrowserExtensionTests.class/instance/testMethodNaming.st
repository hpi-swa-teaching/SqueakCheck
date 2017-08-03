testing
testMethodNaming
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	
		
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue:).
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue1:).
	self deny: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue2:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue1:).
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testTestTrue2:).