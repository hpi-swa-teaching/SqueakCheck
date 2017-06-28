as yet unclassified
testCannotUnselectCategory
	| selectorList |
	browser searchString: 'cull'.
	browser selectorListIndex: 1.
	selectorList := browser selectorList copy.
	
	browser selectorListIndex: 0.
	self assert: selectorList = browser selectorList.