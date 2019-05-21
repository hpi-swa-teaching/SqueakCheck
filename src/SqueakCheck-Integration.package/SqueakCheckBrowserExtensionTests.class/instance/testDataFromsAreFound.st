tests
testDataFromsAreFound
	
	self assert: (self browser classNamesSupportingDataFrom includesSubstring: 'Boolean').
	self assert: (self browser classNamesSupportingDataFrom includesSubstring: 'Character').