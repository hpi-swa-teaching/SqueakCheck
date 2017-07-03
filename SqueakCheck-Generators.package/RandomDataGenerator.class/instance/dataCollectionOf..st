accessing
dataCollectionOf: aGeneratorType
	| resultArray |
	
	resultArray := Array new: self numberOfResults.
	1 to: self numberOfResults do: [:each|
		self complexity: (self convertToComplexity: each).
		resultArray at: each put: (self perform: aGeneratorType)].
	
	^ resultArray.