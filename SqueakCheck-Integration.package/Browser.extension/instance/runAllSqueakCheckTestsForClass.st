*SqueakCheck-Integration
runAllSqueakCheckTestsForClass
	self selectedClass ifNotNil: [
		self selectedClass methodDict keys do: [ :each |
			(self compiledTestsForMethodSelector: each) do: [ :each2 |
				self runTest: each2
			].
		].
	].
