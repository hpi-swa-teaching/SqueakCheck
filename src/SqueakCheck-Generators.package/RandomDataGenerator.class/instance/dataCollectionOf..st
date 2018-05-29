accessing
dataCollectionOf: aClassSymbol
	
	^ (1 to: self numberOfResults) collect: [:each |
		self perform: ('random', aClassSymbol, ':') asSymbol withArguments: {each / (self numberOfResults + 1)}].
