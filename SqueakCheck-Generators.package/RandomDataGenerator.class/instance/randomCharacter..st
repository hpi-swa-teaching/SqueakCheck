generators
randomCharacter: anIterationProgress
        ^ anIterationProgress < self asciiComplexityThreshhold 
			ifTrue: [Character value: (rng nextInt: 128)]
			ifFalse: [Character value: (rng nextInt: 65536)].