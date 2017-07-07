generators
integerData

	^ self dataCollectionOf: [(rng nextInt: (self complexity * 2)) - self complexity].