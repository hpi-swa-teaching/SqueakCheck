testing - instance creation
testEmptyListFailsToApply
	self should: [Empty apply: {}] raise: ApplyError.