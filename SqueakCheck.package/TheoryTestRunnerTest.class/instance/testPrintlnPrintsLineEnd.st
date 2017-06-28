testing - printing
testPrintlnPrintsLineEnd
	runner println: 'foo'.
	self assert: output contents = ('foo' , Character cr).