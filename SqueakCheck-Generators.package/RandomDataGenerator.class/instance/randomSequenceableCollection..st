generators
randomSequenceableCollection: anIterationProgress
	| class result aModerateComplexity |
	
	class := {Array. OrderedCollection} atRandom: rng.
	aModerateComplexity :=  self moderateComplexity: anIterationProgress.
	self assert: anIterationProgress <= 1.
	
	result := (1 to: (rng nextInt: aModerateComplexity))
		inject: class new
		into: [:arr :unusedInt | arr , {self randomObject: anIterationProgress / 2}].
	^ result.
	