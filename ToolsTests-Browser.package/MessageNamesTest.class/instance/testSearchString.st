as yet unclassified
testSearchString
	| cCount cullCount cullCullCount |
	browser searchString: 'c'.
	cCount := browser selectorList size.
	
	browser searchString: 'cull:'.
	cullCount := browser selectorList size.
	
	self assert: cullCount < cCount.
	
	browser searchString: 'cull:cull:'.
	cullCullCount := browser selectorList size.
	
	self assert: cullCullCount < cullCount.