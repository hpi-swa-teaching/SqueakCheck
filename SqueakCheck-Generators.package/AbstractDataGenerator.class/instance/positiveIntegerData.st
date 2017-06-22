generators
positiveIntegerData
	| i |
	i := 0.
	[i <= 0] whileTrue: [i := self integerData].
	^ i.