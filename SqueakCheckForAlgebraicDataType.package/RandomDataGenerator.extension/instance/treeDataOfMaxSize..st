*SqueakCheckForAlgebraicDataType
treeDataOfMaxSize: anInteger
	
	^ ({[self generateLeaf: anInteger]. [self generateNode: anInteger]} atRandom: self rng) value.