SWT014-SqueakCheck
counterExamples: aCompiledMethod

	^ ((self counterExamplesInClass: aCompiledMethod) select: [:each|
			each messages includes: (aCompiledMethod selector)]).