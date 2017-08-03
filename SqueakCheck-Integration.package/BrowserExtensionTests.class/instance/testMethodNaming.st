testing
testMethodNaming
	|browser|
	
	browser := Browser new.
	browser selectClass: self class.
	browser selectMessageNamed: #testTrue.
	
	self deny: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue:').
	self deny: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue1:').
	self deny: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue2:').
	browser addTestForSelectedMethod.
	self assert: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue:').
	browser addTestForSelectedMethod.
	self assert: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue1:').
	browser addTestForSelectedMethod.
	self assert: (browser selectorsOfTestsForSelectedMethod includes: 'testTestTrue2:').
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	