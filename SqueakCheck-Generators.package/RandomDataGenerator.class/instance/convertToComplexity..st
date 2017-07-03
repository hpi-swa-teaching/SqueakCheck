as yet unclassified
convertToComplexity: anIterationNumber
	
	^ (1 / (1 - (anIterationNumber / (self numberOfResults + 1))) squared squared) ceiling.