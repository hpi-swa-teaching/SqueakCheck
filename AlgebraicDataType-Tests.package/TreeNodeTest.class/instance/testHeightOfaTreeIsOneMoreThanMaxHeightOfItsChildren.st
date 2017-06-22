testing - accessing
testHeightOfaTreeIsOneMoreThanMaxHeightOfItsChildren
	self assert: 2 equals: (TreeNode left: (Leaf value: 1)) height.
	self assert: 2 equals: (TreeNode right: (Leaf value: 1)) height.
	self assert: 3 equals: (TreeNode left: (Leaf value: 1) right: (TreeNode left: (Leaf value: 2))) height.
	self assert: 3 equals: (TreeNode left: (TreeNode left: (Leaf value: 2)) right: (Leaf value: 1)) height.