SWT014-SqueakCheck
runAllSqueakCheckTestsForMethodCategory
	(self selectedClass organization listAtCategoryNamed: self selectedMessageCategoryName) do: [ :each |
		(self compiledTestsForMethod: (self selectedClass methodDict at: each)) do: [ :each2 |
			self runTest: each2
		].
	].

