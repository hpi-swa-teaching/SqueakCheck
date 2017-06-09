squeakCheckTests
squeakCheckTestGiveMeAOneAndNothingElse: aSmallInteger
	<theoryTaking: #SmallInteger>
	self assert: [(SWTQClass new giveMeAOne: nil andNothingElse: nil ) isNil not ]