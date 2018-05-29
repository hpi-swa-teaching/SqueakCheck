testing
assertCorrectTag: aCollection
	| expected |
	expected := self new unapply first.
	(aCollection first = expected)
		ifFalse: [ApplyError signal: ('Unexpected tag: was {1}, expected {2}' format: {aCollection first. expected})].