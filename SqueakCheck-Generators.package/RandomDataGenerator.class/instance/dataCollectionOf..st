accessing
dataCollectionOf: aClassSymbol
	| resultArray |
	
	resultArray := Array new: self numberOfResults.
	1 to: self numberOfResults do: [:each|
		resultArray at: each put: (self perform: ('random', aClassSymbol asSymbol) withArguments: {each / self numberOfResults})].
	
	^ resultArray.