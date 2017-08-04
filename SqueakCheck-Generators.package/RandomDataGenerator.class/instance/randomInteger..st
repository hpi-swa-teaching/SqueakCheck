generators
randomInteger: anIterationProgress
	| complexity |

	complexity := self exponentialComplexity: anIterationProgress.
	^ (rng nextInt: complexity * 2) - complexity.