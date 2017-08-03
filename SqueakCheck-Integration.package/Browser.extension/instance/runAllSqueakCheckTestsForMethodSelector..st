*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodSelector: aSelector

	(self selectorsOfTestsForMethodSelector: aSelector) do: [:each|
		self runTest: each].
