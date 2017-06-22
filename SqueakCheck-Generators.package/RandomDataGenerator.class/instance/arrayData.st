generators
arrayData
	| any cls |
	any := {[self booleanData]. [self characterData]. [self integerData]. [self stringData]}.
	cls := {Array. OrderedCollection} atRandom: rng.
	^ (1 to: (rng nextInt: 100) + 1)
		inject: cls new
		into: [:arr :unusedInt | arr , {(any atRandom: rng) value}].