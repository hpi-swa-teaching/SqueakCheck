testing - instance creation
testInitialiserForUnarySelectorInitialisesInstVar
	| src |
	src := 'foo: aFoo
	foo := aFoo.'.
	self assert: (AlgebraicDataType initialiserFor: #foo:) = src.