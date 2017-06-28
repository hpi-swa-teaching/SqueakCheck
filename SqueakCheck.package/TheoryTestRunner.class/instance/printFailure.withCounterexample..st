printing
printFailure: theoryName withCounterexample: anObject
	self println: ('Falsifiable: {1} with counterexample: {2}' format: {theoryName. anObject printString.}).