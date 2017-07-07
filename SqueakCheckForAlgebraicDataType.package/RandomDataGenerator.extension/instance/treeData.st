*SqueakCheckForAlgebraicDataType
treeData
	"Generate a random tree with 0 <= size <= self moderateComplexity."
	^ self dataCollectionOf: [self generateNode: (rng nextInt: self moderateComplexity + 1) - 1].