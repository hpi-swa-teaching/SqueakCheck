*SqueakCheck-Integration
runAllSqueakCheckTestsForMethodCategory

	(self selectorsOfTestsFor: self methodSelectorsInSelectedMessageCategory) do: [:each |
		self runTest: each].
