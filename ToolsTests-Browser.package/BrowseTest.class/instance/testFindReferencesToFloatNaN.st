testing
testFindReferencesToFloatNaN
	self assert: (SystemNavigation new allCallsOn: (Float bindingOf: #NaN)) notEmpty