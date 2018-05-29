*SqueakCheck-Integration
counterexamplesFor: aSelector

	^ (self counterexamplesInClass: self testClassForSelectedClass) select: [ :each |
			each hasLiteral: aSelector].