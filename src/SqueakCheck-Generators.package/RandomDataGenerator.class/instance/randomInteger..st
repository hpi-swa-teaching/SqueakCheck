generators
randomInteger: anIterationProgress
	| complexity |

	complexity := self exponentialComplexity: anIterationProgress.
	^ (self rng nextInt: complexity * 2) - complexity.