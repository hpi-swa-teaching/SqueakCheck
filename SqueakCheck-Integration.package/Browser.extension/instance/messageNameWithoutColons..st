*SqueakCheck-Integration
messageNameWithoutColons: aMessageName

	^ (aMessageName subStrings: ':') inject: '' into: [:currentString :next|
		 currentString, next capitalized].