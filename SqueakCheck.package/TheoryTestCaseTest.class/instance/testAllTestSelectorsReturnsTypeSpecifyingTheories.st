testing
testAllTestSelectorsReturnsTypeSpecifyingTheories
	| list |
	list := TheoryTestData allTestSelectors.

	"The list contains type-specifying theories."
	self assert: (list contains: [:sel | ((TheoryTestData >> sel) pragmaAt: #theoryTaking:) notNil]).