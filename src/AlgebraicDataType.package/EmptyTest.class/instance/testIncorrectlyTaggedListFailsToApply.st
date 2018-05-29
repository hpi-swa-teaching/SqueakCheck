testing - instance creation
testIncorrectlyTaggedListFailsToApply
	self should: [Empty apply: {#empty}] raise: ApplyError.