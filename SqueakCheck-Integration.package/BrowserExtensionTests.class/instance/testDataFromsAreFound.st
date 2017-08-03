testing
testDataFromsAreFound
	| browser |
	
	browser := Browser new.
	
	self assert: (browser classNamesSupportingDataFrom includesSubstring: 'Boolean').
	self assert: (browser classNamesSupportingDataFrom includesSubstring: 'Character').