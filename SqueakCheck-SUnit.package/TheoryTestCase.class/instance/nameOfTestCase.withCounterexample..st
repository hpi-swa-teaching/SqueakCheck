typing
nameOfTestCase: aTheorySelector withCounterexample: anObject
	| description |
	
	description := (anObject printString withBlanksCondensed subStrings: ' ') inject: '' into: [:acc :each |
		acc , ((each select: #isAlphaNumeric) capitalized)].
	^ 'test' , aTheorySelector asString allButLast capitalized , 'With' , description.
	