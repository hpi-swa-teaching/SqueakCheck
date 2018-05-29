testing - instance creation
testEmptyListFailsToApply
	self should: [Leaf apply: {}] raise: ApplyError.