*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodSelector: aSelector

	(self namesOfTestsForMethod: aSelector) do: [:each|
		self runTest: each].
