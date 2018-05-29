testing - instance creation
testAccessorForNonZeroAritySelectorFails
	self should: [AlgebraicDataType accessorFor: #foo:] raise: Error.
	self should: [AlgebraicDataType accessorFor: #foo:bar:] raise: Error.