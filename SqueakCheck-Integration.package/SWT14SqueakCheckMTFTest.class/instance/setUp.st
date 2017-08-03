as yet unclassified
setUp

	self wantsToTest: (MorphicToolBuilder new build: (Browser new setClass: BrowserExtensionTests selector: #testTrue; openEditString: nil)).
	self slowTestBy: 1000.