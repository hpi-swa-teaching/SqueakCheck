*SqueakCheck-Integration
compiledTestsForMethodSelector: aSelector

	^ (self namesOfTestsForMethod: aSelector) collect: [:each|
		 self classWithTestsForSelectedClass methodDict at: each].