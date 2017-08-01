*SqueakCheck-Integration
counterExamples: aSelector

	^ ((self counterExamplesInClass: self classWithTestsForSelectedClass) select: [ :each |
			each messages includes: aSelector]).