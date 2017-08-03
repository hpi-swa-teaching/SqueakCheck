*SqueakCheck-Integration
counterexamples: aSelector

	^ ((self counterexamplesInClass: self testClassForSelectedClass) select: [ :each |
			each messages includes: aSelector]).