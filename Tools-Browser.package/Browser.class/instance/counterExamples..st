SWT014-Browsererweiterung
counterExamples: aCompiledMethod

	^((aCompiledMethod methodClass methodDict values select: [:each | ((aCompiledMethod methodClass) organization categoryOfElement: (each selector)) = #'counterexamples']) select: [:each | each messages includes: (aCompiledMethod selector)])