testing
testTypeOfDatumReturnsExpectedClasses
	| set |
	set := TheoryTyper new typeOfDatum: (self class >> #methodWithOneClassSideKeywordMessage:).
	self assert: (set includes: ArrayedCollection).