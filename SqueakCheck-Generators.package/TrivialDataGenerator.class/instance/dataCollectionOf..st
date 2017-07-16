accessing
dataCollectionOf: aClassSymbol
	
	^ self perform: (((aClassSymbol asString at: 1 put: (aClassSymbol asString first asLowercase); yourself), 'Data') asSymbol).