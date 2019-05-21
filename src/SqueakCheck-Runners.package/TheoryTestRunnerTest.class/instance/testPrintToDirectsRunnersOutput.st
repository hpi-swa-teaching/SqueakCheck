tests - printing
testPrintToDirectsRunnersOutput
	| runner stream |
	stream := ReadWriteStream on: (String new: 10).
	runner := TheoryTestRunner printTo: stream.
	runner print: 'test'.
	self assert: 'test' equals: stream contents.