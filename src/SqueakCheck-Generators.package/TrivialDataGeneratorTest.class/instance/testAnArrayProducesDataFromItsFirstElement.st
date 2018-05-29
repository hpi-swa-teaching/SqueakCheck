testing
testAnArrayProducesDataFromItsFirstElement

	self assert: #(true false) equals: ({true. 1. 'two'. Object new.} dataFrom: generator).