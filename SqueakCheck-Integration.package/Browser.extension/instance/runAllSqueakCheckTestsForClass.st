*SqueakCheck-Integration
runAllSqueakCheckTestsForClass
	
	self selectorsOfTestsForSelectedClass do: [:each |
		self runTest: each].
