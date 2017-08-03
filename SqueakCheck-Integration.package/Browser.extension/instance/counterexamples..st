*SqueakCheck-Integration
counterexamples: aSelector

	^ ((self counterexamplesInClass: self classWithTestsForSelectedClass) select: [ :each |
			each messages includes: aSelector]).