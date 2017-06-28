*SqueakCheckForAlgebraicDataType
treeData
	"Generate a random tree with 0 <= size <= self maxTreeSize."
	^ self generateNode: (rng nextInt: self maxTreeSize + 1) - 1.