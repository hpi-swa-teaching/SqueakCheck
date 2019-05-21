tests
testAllTestSelectorsFindsTheories
	| list |
	list := TheoryTestData allTestSelectors.
	self assert: list notEmpty.