generators
randomObject: anIterationProgress
	| sel |
	
	sel := ((self class allSelectors select: [:name | name beginsWith: 'random'])
		reject: [:name | name == #objectData]) atRandom: rng.
	^ self perform: sel withArguments: {anIterationProgress}.