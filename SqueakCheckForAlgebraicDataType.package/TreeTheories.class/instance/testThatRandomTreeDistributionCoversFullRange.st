testing
testThatRandomTreeDistributionCoversFullRange
	| trees |
	trees := (1 to: 1000) collect: [:unused | RandomDataGenerator new treeData size].
	self assert: (trees minMax) = #(0 100).