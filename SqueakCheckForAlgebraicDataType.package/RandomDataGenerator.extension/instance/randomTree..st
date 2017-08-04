*SqueakCheckForAlgebraicDataType
randomTree: anIterationProgress
	"Generate a random tree with 0 <= size <= self moderateComplexity."
	
	^ self generateNode: (rng nextInt: (self moderateComplexity: anIterationProgress / 2) + 1) - 1.