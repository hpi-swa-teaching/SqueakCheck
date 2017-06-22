testing - instance creation
testApplyIsInverseOfUnapply
	| node |
	node := TreeNode left: (Leaf value: 1) right: (Leaf value: 2).
	self assert: node = (TreeNode apply: node unapplyFully).