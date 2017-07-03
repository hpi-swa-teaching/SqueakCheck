generators
arrayData
	| cls complexityBackup result |
	
	cls := {Array. OrderedCollection} atRandom: rng.
	
	complexityBackup := self complexity.
	self complexity: self moderateComplexity.
	
	result := (1 to: (rng nextInt: self complexity))
		inject: cls new
		into: [:arr :unusedInt | arr , {self objectData}].
	
	self complexity: complexityBackup.
	^ result.
	