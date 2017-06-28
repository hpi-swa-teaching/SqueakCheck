running
tearDown
	"The aFailingTheoryAlwaysFails: theory will always spit out counterexamples. This cleans up the counterexamples to prevent an ever-increasing number of bogus tests."
	(TheoryTestData allSelectors select: [:name | name beginsWith: 'testAFailingTheoryFailsWith'])
		do: [:name | TheoryTestData removeSelector: name].