squeakCheckTests
scTestMethodToTest1: aSmallInteger
	<theoryTaking: #SmallInteger "#String" "#Character" "#Object" "#SequenceableCollection">
	"<generateCounterExamples>"

	self assert: [(SWTQClass new methodToTest) notNil not]