testing - instance creation
testAccessorForNullarySelectorReturnsMethodString
	| src |
	src := 'foo
	^ foo.'.
	self assert: (AlgebraicDataType accessorFor: #foo) = src.