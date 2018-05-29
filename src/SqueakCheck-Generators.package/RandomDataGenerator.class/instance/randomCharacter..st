generators
randomCharacter: anIterationProgress

        ^ anIterationProgress < self asciiComplexityThreshhold 
			ifTrue: [Character value: (self rng nextInt: 128)]
			ifFalse: [Character value: (self rng nextInt: 65536)].