*SqueakCheck-Integration
compiledTestsForMethod: aCompiledMethod

	^ (self namesOfTestsForMethod: aCompiledMethod selector) collect: [:each|
		 self classWithTestsForSelectedClass methodDict at: each].