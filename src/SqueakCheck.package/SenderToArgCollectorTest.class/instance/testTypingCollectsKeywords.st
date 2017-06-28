testing
testTypingCollectsKeywords
	| collector |
	collector := SenderToArgCollector new visitMethodNode: (Decompiler new
			decompile: #methodWithOneKeywordMessage:
			in: self class).

	self
		assert: #(#copyFrom:to:) asSet
		equals: collector selectors.