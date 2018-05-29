testing
testTypingMakesSetsOfClassAndInstanceMethodsDisjoint
	| collector |
	collector := SenderToArgCollector new visitMethodNode: (Decompiler new
			decompile: #methodWithInstanceAndClassMessages:
			in: self class).

	self assert: (collector selectors intersection: collector classSelectors) isEmpty.