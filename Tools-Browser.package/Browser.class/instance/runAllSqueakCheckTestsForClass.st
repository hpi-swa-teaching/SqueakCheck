SWT014-SqueakCheck
runAllSqueakCheckTestsForClass
	Transcript show: self selectedClass; cr.
	self selectedClass methodDict do: [ :each |
		(self compiledTestsForMethod: each) do: [ :each2 |
			self runTest: each2
		].
	].