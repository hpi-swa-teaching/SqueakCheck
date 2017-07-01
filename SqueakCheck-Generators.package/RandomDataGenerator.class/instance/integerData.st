generators
integerData
	^ (Array new: 1) at: 1 put: ((rng nextInt: (integerRange * 2)) - integerRange); yourself