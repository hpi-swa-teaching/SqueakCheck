testing
testPositiveIntegerDataReturnsPositiveIntegers
	self assert: ((generator positiveIntegerData select: [ :each | each <= 0]) isEmpty).