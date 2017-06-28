testing
testAllTestSelectorsReturnsHighArityTheories
	| list |
	list := TheoryTestData allTestSelectors.
"highArityTheories: one receiveTheSame: two kindsOf: three input: four
	<theory>
	self deny: ({one. two. three. four} anySatisfy: #isNil)."
	"The list contains high arity theories."
	self assert: (list includes: #highArityTheories:receiveTheSame:kindsOf:input:).