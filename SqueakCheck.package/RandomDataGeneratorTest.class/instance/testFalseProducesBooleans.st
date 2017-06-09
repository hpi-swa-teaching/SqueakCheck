testing
testFalseProducesBooleans
	100 timesRepeat: [self assert: (#(true false) includes: (Boolean dataFrom: generator))].