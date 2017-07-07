generators
objectData
	
	^ self dataCollectionOf: [self perform: [((self class allSelectors select: [:name | name endsWith: 'Data'])
		reject: [:name | name == #objectData]) atRandom: rng].].