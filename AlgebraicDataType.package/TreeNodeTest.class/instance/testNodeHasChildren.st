testing
testNodeHasChildren
	self assert: (TreeNode left: Tree empty right: Tree empty) hasChildren.
	
	self assert: (TreeNode left: (Leaf value: 1) right: (Leaf value: 2)) children = {Leaf value: 1. Leaf value: 2}.