accessing
dataCollectionOf: aClassSymbol
	
	^ self perform: ((aClassSymbol asString at: 1 put: aClassSymbol first asLowercase; yourself), 'Data') asSymbol.