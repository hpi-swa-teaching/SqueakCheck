*SqueakCheck-Integration
counterexamples: aSelector

	^ ((self counterexamplesInClass: self testClassForSelectedClass) select: [ :each |
			each hasLiteral: aSelector]).