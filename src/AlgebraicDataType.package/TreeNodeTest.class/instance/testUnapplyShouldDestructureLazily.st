testing - unapply
testUnapplyShouldDestructureLazily
	| destructure tree |
	tree := TreeNode left: (Leaf value: 1) right: (Leaf value: 2).
	destructure := tree unapply.
	self assert: destructure first = #TreeNode.
	self assert: destructure second = tree left.
	self assert: destructure third = tree right.