*SqueakCheck-Integration
messageNameToCamelcase: aMessageName

	^ (aMessageName subStrings: ':') inject: '' into: [:currentString :next |
		 currentString, next capitalized].