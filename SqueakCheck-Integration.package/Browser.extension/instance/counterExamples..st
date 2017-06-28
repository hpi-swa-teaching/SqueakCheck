*SqueakCheck-Integration
counterExamples: aCompiledMethod

	^ ((self counterExamplesInClass: aCompiledMethod) select: [:each|
			each messages includes: (aCompiledMethod selector)]).