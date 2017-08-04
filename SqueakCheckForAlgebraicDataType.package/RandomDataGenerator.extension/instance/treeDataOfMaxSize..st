*SqueakCheckForAlgebraicDataType
treeDataOfMaxSize: anInteger
	"Thunking means never having to generate more than you have to."
	
	^ ({[self generateLeaf: anInteger]. [self generateNode: anInteger]} atRandom: rng) value.