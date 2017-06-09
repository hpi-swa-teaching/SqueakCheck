generators
objectData
	| sel |
	sel := ((self class allSelectors select: [:name | name endsWith: 'Data'])
		reject: [:name | name == #objectData]) atRandom: rng.
	^ self perform: sel.