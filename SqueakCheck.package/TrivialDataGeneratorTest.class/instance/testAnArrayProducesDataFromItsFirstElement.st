testing
testAnArrayProducesDataFromItsFirstElement
	self assert: true equals: ({true. 1. 'two'. Object new.} dataFrom: generator).