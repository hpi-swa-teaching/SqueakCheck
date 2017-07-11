generators
randomSequencableCollection: anIterationProgress
	| cls result aModerateComplexity |
	
	cls := {Array. OrderedCollection} atRandom: rng.
	
	aModerateComplexity :=  self moderateComplexity: anIterationProgress.
	
	self assert: anIterationProgress < 1.1.
	
	result := (1 to: (rng nextInt: aModerateComplexity))
		inject: cls new
		into: [:arr :unusedInt | arr , {self randomObject: anIterationProgress / 2}].
	
	^ result.
	