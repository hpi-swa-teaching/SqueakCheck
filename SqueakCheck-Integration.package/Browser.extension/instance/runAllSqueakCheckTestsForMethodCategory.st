*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodCategory

	self testsForSelectedMethodCategory do: [:each|
		self runTest: each].
