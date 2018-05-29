testing - instance creation
testTwoElementListFailsToApply
	self should: [Empty apply: {#Empty. 1.}] raise: ApplyError.