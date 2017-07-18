testing
testTrueProducesBooleans

	self assert:((Boolean dataFrom: generator) allSatisfy: [:each | #(true false)  includes: each]).