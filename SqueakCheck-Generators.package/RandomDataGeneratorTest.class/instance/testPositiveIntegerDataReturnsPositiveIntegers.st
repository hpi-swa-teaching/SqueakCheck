testing
testPositiveIntegerDataReturnsPositiveIntegers

	self assert: (((generator dataCollectionOf: #PositiveInteger) select: [ :each | each <= 0]) isEmpty)