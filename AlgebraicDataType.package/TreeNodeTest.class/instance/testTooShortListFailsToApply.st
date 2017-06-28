testing - instance creation
testTooShortListFailsToApply
	self should: [TreeNode apply: {#Tree.}] raise: ApplyError.