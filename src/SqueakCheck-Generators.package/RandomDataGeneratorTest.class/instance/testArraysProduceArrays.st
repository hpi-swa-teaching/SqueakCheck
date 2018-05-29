testing
testArraysProduceArrays
	| data |
	data := OrderedCollection new.
	10 timesRepeat: [data add: (SequenceableCollection dataFrom: generator)].
	data := data reject: [:each | {Array. OrderedCollection}
			anySatisfy: [:class | each isKindOf: class]].
	self assert: data isEmpty.