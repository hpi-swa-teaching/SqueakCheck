testing
testMethodNaming
			
	self
		deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue:);
		deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue1:);
		deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue2:);
		deny: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrueForAnd:).
	
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue:).
	
	self	browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue1:).
		
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrue2:).
	
	self browser selectMessageNamed: #returnTrueFor:and:.
	self browser addTestForSelectedMethod.
	self assert: (self browser selectorsOfTestsForSelectedMethod includes: #testReturnTrueForAnd:).