squeakCheckTests
scTestMethodToTest: aSmallInteger
	<theoryTaking: #SmallInteger "#String" "#Character" "#Object" "#SequenceableCollection">

	self assert: [(SWTQClass new methodToTest) notNil not]