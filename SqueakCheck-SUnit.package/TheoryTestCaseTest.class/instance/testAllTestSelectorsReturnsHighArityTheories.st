testing
testAllTestSelectorsReturnsHighArityTheories
	| list |
	
	list := TheoryTestData allTestSelectors.
	self assert: (list includes: #highArityTheories:receive:notNil:input:).