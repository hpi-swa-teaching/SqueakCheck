*SqueakCheck-Integration
runAllSqueakCheckTestsForClass
	
	self testsForSelectedClass do: [:each|
		self runTest: each].
