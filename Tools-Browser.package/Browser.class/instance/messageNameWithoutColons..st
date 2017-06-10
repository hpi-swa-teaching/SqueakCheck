SWT014-SqueakCheck
messageNameWithoutColons: aMessageName
	|tmpCollection resultString |
	
	resultString := ''.
	tmpCollection := aMessageName subStrings: ':'.
	tmpCollection do: [:each | resultString := resultString, (each capitalized)].
	^ resultString.