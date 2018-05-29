testing - instance creation
testNoValueListFailsToApply
	self should: [Leaf apply: {#Leaf.}] raise: ApplyError.