squeakCheckTests
squeakCheckTestGiveMeAOne: aSmallInteger
	<theoryTaking: #SmallInteger>
	self assert: [(SWTQClass new giveMeAOne: nil ) isNil ]