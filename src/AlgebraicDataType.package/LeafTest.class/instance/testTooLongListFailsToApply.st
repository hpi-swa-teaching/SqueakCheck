testing - instance creation
testTooLongListFailsToApply
	self should: [Leaf apply: {#Leaf. 1. 2.}] raise: ApplyError.