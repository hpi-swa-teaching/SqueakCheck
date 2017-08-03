*SqueakCheck-Integration
counterexamplesInClass: aClass

	^ aClass methodDict values select: [:each|
		 (aClass organization categoryOfElement: each selector) = #'counterexamples'].