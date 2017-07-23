*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodSelector: aSelector

	(self compiledTestsForMethodSelector: aSelector) do: [:each|
		self runTest: each].
