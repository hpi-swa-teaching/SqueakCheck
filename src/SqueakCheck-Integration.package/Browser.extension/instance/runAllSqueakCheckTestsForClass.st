*SqueakCheck-Integration
runAllSqueakCheckTestsForClass
	
	(self selectorsOfTestsFor: self selectedClassMethods) do: [:each |
		self runTest: each].
