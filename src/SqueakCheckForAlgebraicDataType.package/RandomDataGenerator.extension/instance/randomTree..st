*SqueakCheckForAlgebraicDataType
randomTree: anIterationProgress
	
	^ self generateNode: (self rng nextInt: (self moderateComplexity: anIterationProgress / 2) + 1) - 1.