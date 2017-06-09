running
setUp
	output := ReadWriteStream on: (String new: 1000).
	runner := TheoryTestRunner
		printTo: output
		generator: TrivialDataGenerator new.