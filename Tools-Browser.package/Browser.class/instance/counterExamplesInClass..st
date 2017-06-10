SWT014-SqueakCheck
counterExamplesInClass: aCompiledMethod

	^ aCompiledMethod methodClass methodDict values select: [:each|
		 (aCompiledMethod methodClass organization categoryOfElement: (each selector)) = #'counterexamples'].