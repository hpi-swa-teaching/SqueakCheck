testing - instance creation
testTooIncorrectlyTaggedListFailsToApply
	self should: [TreeNode apply: {#TreeNod. {#Empty}. {#Empty}}] raise: ApplyError.