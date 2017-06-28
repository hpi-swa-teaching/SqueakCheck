testing - instance creation
testEmptyListFailsToApply
	self should: [TreeNode apply: {}] raise: ApplyError.