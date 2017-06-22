testing
testAllTestSelectorsFindsNormalTests
	| list |
	list := TheoryTestData allTestSelectors.
	self assert: (list contains: [:sel | sel beginsWith: 'test']).