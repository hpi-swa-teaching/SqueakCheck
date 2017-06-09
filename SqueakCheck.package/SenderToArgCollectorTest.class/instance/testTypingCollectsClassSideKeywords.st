testing
testTypingCollectsClassSideKeywords
	| collector |
	collector := SenderToArgCollector new visitMethodNode: (Decompiler new
			decompile: #methodWithOneClassSideKeywordMessage:
			in: self class).

	self
		assert: #(#with:with:) asSet
		equals: collector classSelectors.