generators
integerData

	^ (rng nextInt: (self complexity * 2)) - self complexity.