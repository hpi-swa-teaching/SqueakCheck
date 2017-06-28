testing
assertCorrectSize: aCollection
	| expected |
	expected := self new unapply size.
	(aCollection size = expected)
		ifFalse: [ApplyError signal: ('Incorrect number of arguments: was {1}, expected {2}' format: {aCollection size. expected})].