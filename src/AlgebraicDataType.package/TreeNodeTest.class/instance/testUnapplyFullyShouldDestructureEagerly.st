testing - unapply
testUnapplyFullyShouldDestructureEagerly
	| destructure tree |
	tree := TreeNode left: (Leaf value: 1) right: (Leaf value: 2).
	destructure := tree unapplyFully.
	self assert: destructure first = #TreeNode.
	self assert: destructure second isCollection.
	self assert: destructure second first = #Leaf.
	self assert: destructure third isCollection.
	self assert: destructure third first = #Leaf.