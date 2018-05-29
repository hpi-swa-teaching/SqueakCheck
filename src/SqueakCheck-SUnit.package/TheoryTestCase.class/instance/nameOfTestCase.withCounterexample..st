typing
nameOfTestCase: aTheorySelector withCounterexample: anObject
	| description |
	
	description := (anObject printString withBlanksCondensed subStrings: ' ') inject: '' into: [:acc :each |
		acc, (each select: #isAlphaNumeric) capitalized].
	^ aTheorySelector asString allButLast, 'With', description.
	