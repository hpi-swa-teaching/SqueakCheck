testing
testStringsProduceaConstantString
	5 timesRepeat: [self assert: 'I am a test string' equals: (String dataFrom: generator)].