testing
testAllTestSelectorsReturnsNormalTheories
	| list |
	list := TheoryTestData allTestSelectors.

	"The list contains normal theories."
	self assert: (list contains: [:sel | ((TheoryTestData >> sel) pragmaAt: #theory) notNil]).