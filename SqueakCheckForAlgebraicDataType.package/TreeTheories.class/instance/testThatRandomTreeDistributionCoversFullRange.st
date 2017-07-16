testing
testThatRandomTreeDistributionCoversFullRange

	"this is bullshit"
	"
	| trees |
	trees := (RandomDataGenerator dataCollectionOf: #Tree) collect: [ :each |  each size].
	self assert: (trees minMax) = #(0 100)."