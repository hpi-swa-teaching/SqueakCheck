testing
testMethodNaming
	|browser|
	
	browser := Browser new.
	browser selectClass: self class.
	browser selectMessageNamed: #testTrue.
	
	self deny: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue:').
	self deny: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue1:').
	self deny: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue2:').
	browser addTestForSelectedMethod.
	self assert: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue:').
	browser addTestForSelectedMethod.
	self assert: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue1:').
	browser addTestForSelectedMethod.
	self assert: (browser namesOfTestsForSelectedMethod includes: 'testTestTrue2:').
	
	SystemOrganization removeSystemCategory: browser categoryNameForTest asSymbol.	