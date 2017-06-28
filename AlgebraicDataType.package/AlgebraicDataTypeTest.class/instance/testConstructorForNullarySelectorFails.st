testing - instance creation
testConstructorForNullarySelectorFails
	self should: [AlgebraicDataType constructorFor: #foo] raise: Error.