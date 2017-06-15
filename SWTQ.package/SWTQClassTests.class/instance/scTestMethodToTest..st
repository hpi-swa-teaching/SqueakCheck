squeakCheckTests
scTestMethodToTest: aSmallInteger
	<theoryTaking: #SmallInteger>

	self assert: [(SWTQClass new methodToTest) notNil]