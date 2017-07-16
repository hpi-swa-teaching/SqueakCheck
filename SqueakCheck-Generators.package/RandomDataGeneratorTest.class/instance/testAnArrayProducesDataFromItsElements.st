testing
testAnArrayProducesDataFromItsElements
	| data |
	data :=  {true. 1. 'two'. $3.} dataFrom: generator.
	data := data reject: [:each | {Boolean. SmallInteger. String. Character}
			anySatisfy: [:cls | each isKindOf: cls]].
	self assert: data isEmpty.