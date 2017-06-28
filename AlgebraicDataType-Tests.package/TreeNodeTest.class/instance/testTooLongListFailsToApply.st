testing - instance creation
testTooLongListFailsToApply
	self should: [TreeNode apply: {#Tree. {#Empty}. {#Empty}. {#Empty}}] raise: ApplyError.