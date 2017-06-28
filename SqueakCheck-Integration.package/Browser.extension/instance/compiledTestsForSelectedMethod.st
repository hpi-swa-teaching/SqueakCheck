*SqueakCheck-Integration
compiledTestsForSelectedMethod

	^ self namesOfTestsForSelectedMethod collect: [:each|
		 self classWithTestsForSelectedClass methodDict at: each].
