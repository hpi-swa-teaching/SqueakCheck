*SqueakCheckForAlgebraicDataType
generateNode: maxTreeSize
	| left |
	
	maxTreeSize <= 0 ifTrue: [^ Tree empty].
	left := self treeDataOfMaxSize: maxTreeSize - 1.
	^ TreeNode left: left right: (self treeDataOfMaxSize: maxTreeSize - left size - 1).