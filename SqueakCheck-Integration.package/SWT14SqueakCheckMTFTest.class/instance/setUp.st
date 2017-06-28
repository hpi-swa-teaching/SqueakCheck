as yet unclassified
setUp

	self wantsToTest: (MorphicToolBuilder new build: (Browser new setClass: SWT14SqueakCheckTest selector: #testTrue; openEditString: nil)).
	self slowTestBy: 1000.