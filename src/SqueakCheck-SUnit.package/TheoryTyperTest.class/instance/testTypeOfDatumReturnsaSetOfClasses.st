testing
testTypeOfDatumReturnsaSetOfClasses
	| set |
	set := TheoryTyper new typeOfDatum: (self class >> #methodWithOneKeywordMessage:).
	set do: [:each | | instance |
		"Some classes - Integer for instance - don't let you instantiate them. This filters out those 'abstract' classes."
		instance := [each new] on: Error do: [nil].
		instance ifNotNil:
			[self
				shouldnt: [self methodWithOneKeywordMessage: each new]
				raise: MessageNotUnderstood]].