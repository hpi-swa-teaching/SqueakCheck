*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodCategory

	self selectorsOfTestsForSelectedMethodCategory do: [:each|
		self runTest: each].
