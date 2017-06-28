*SqueakCheck-Integration
runAllSqueakCheckTestsForClass
	self selectedClass methodDict do: [ :each |
		(self compiledTestsForMethod: each) do: [ :each2 |
			self runTest: each2
		].
	].
