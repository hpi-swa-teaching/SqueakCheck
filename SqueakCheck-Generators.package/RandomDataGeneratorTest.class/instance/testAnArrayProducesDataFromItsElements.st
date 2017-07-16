testing
testAnArrayProducesDataFromItsElements
	| data |
	data := Array dataFrom: generator.
	data := data reject: [:each | {Boolean. SmallInteger. String. Character}
			anySatisfy: [:cls | each isKindOf: cls]].
	self assert: data isEmpty.